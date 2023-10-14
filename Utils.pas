unit Utils;

interface

uses Winapi.Windows, Winapi.Messages, Forms, System.SysUtils, Vcl.StdCtrls, Vcl.ComCtrls,
     Vcl.Graphics, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, System.Classes, ShellAPI,
     System.Net.HttpClient, jpeg, pngimage, ActiveX, ShlObj, System.IOUtils, System.Types,
     Vcl.Buttons, Vcl.Menus;

function GetAppFolder: string;
function GetNameApp: String;
function GetBackgroundsFolder: String;
function GetSaveFolder: String;
function PosEx(const SubStr, S: string; Offset: Cardinal = 1): Integer;
function GetThumbnailImage(const DisplayName: String;
         Width: Integer; Height: Integer): HBITMAP;
function ResizeBmp(bitmp: TBitmap; wid, hei: Integer): Boolean;
function ExtractUrlFileName(const AUrl: string): string;
procedure AllEditChange(Edit: TEdit; UpDown: TUpDown);
procedure LoadPictureFromURL(Link: String; ImgStream: TMemoryStream);
procedure CanvasTextShadow(Canvas:TCanvas; text:string;x,y:integer;
          sh_color: TColor = 0; sh_x: integer = 2; sh_y: integer = 1);
procedure CanvasTextShadowBorder(Canvas:TCanvas; text:string;x,y:integer;
          sh_color: TColor = 0; width: integer = 1);
procedure GetAuthorsText(CustomForm: TForm; aLanguageID: String);
procedure PaintImageFromRes(CustomForm: TForm; ImageName: String);
procedure PaintImageFromFile(CustomForm: TForm; ImageName: String);
procedure GetListImagesFromRes(ImageName: String; ListView: TListView; ImageList: TImageList; Index: Integer);
procedure FindImageFiles(MainForm: TForm; Dir: string; ImageList: TImageList;
          MainList: TListView; ClearList: Boolean);
procedure LangImagesFromRes(Button: TSpeedButton; ImageList: TImageList);
procedure RecentFilesToMenu(PopupMenu: TMenuItem; Item1Caption: String);

implementation

uses Unit1, Translation;

function GetAppFolder: string;
var
  Path: string;
begin
  Path := GetHomePath;
  if Path <> '' then
    Result := IncludeTrailingPathDelimiter(Path)
  else
    Result := '';
end;

function GetNameApp: String;
begin
 Result := IncludeTrailingPathDelimiter(ExtractFileName(ChangeFileExt(ParamStr(0),'')));
end;

function GetBackgroundsFolder: String;
begin
 SetCurrentDir(ExtractFilePath(ParamStr(0)));
 if FileExists(ExtractFilePath(ParamStr(0))+'settings.ini') then
  begin
   if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'Backgrounds') then
   CreateDirectory(PChar(ExtractFilePath(ParamStr(0)) + 'Backgrounds'),nil);
   Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))+'Backgrounds');
  end else
  begin
   if not DirectoryExists(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) + 'Backgrounds') then
   CreateDirectory(PChar(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) + 'Backgrounds'),nil);
   Result := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) +'Backgrounds');
  end;
end;

function GetSaveFolder: String;
begin
 SetCurrentDir(ExtractFilePath(ParamStr(0)));
 if FileExists(ExtractFilePath(ParamStr(0))+'settings.ini') then
  begin
   if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'Save') then
   CreateDirectory(PChar(ExtractFilePath(ParamStr(0)) + 'Save'),nil);
   Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))+'Save');
  end else
  begin
   if not DirectoryExists(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) + 'Save') then
   CreateDirectory(PChar(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) + 'Save'),nil);
   Result := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(GetAppFolder + GetNameApp) +'Save');
  end;
end;

function PosEx(const SubStr, S: string; Offset: Cardinal = 1): Integer;
var
  I,X: Integer;
  Len, LenSubStr: Integer;
begin
  if Offset = 1 then
    Result := Pos(SubStr, S)
  else
  begin
    I := Offset;
    LenSubStr := Length(SubStr);
    Len := Length(S) - LenSubStr + 1;
    while I <= Len do
    begin
      if S[I] = SubStr[1] then
      begin
        X := 1;
        while (X < LenSubStr) and (S[I + X] = SubStr[X + 1]) do
          Inc(X);
        if (X = LenSubStr) then
        begin
          Result := I;
          exit;
        end;
      end;
      Inc(I);
    end;
    Result := 0;
  end;
end;

function GetThumbnailImage(const DisplayName: String; Width: Integer; Height: Integer): HBITMAP;
var
  FilePath: String;
  FileName: String;
  DesktopFolder: IShellFolder;
  Eaten: ULONG;
  DirectoryItemIDList: PItemIDList;
  Attributes: ULONG;
  ShellFolder: IShellFolder;
  ExtractImage: IExtractImage;
  PathBuffer: array [0..MAX_PATH-1] of WideChar;
  Priority: DWORD;
  Size: TSize;
  Flags: DWORD;
  ColorDepth: DWORD;
  Res: HRESULT;
begin
  Result:=0;
  FilePath:=ExcludeTrailingPathDelimiter(ExtractFilePath(DisplayName));
  if FilePath[Length(FilePath)]=':' then
    FilePath:=IncludeTrailingPathDelimiter(FilePath);
  FileName:=ExtractFileName(DisplayName);
  SHGetDesktopFolder(DesktopFolder);
  DesktopFolder.ParseDisplayName(0, nil, StringToOleStr(FilePath),
    Eaten, DirectoryItemIDList, Attributes);
  DesktopFolder.BindToObject(DirectoryItemIDList, nil,
    IShellFolder, ShellFolder);
  CoTaskMemFree(DirectoryItemIDList);
  ShellFolder.ParseDisplayName(0, nil,
    StringToOleStr(ExtractFileName(FileName)),
    Eaten, DirectoryItemIDList, Attributes);
  ShellFolder.GetUIObjectOf(0, 1,
    DirectoryItemIDList, IExtractImage, nil, ExtractImage);
  CoTaskMemFree(DirectoryItemIDList);
  if Assigned(ExtractImage) then
  begin
    Priority:=0;
    Size.cx:=Width;
    Size.cy:=Height;
    Flags:= IEIFLAG_SCREEN or IEIFLAG_OFFLINE or IEIFLAG_QUALITY or IEIFLAG_NOBORDER or IEIFLAG_ORIGSIZE or IEIT_PRIORITY_NORMAL;
    ColorDepth:=32;
    Res:=ExtractImage.GetLocation(@PathBuffer[0], Length(PathBuffer),
      Priority, Size, ColorDepth, Flags);
    if (Res=NOERROR) or (Res=E_PENDING) then
      if not Succeeded(ExtractImage.Extract(Result)) then
        Result:=0;
  end;
end;

function ResizeBmp(bitmp: TBitmap; wid, hei: Integer): Boolean;
var
  TmpBmp: TBitmap;
  ARect: TRect;
begin
  Result := False;
  try
    TmpBmp := TBitmap.Create;
    try
      TmpBmp.Width  := wid;
      TmpBmp.Height := hei;
      ARect := Rect(0,0, wid, hei);
      TmpBmp.Canvas.StretchDraw(ARect, Bitmp);
      bitmp.Assign(TmpBmp);
    finally
      TmpBmp.Free;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

function ExtractUrlFileName(const AUrl: string): string;
var
  i: Integer;
begin
  i := LastDelimiter('/', AUrl);
  Result := Copy(AUrl, i + 1, Length(AUrl) - (i));
end;

procedure AllEditChange(Edit: TEdit; UpDown: TUpDown);
begin
 if (length(Edit.Text) > 0) then
     UpDown.Position := StrToInt(Edit.Text);
end;

procedure LoadPictureFromURL(Link: String; ImgStream: TMemoryStream);
var
 HttpClient: tHttpClient;
begin
 HttpClient:=tHttpClient.Create;
  try
   HttpClient.Get(Link, ImgStream);
  finally
   FreeAndNil(HttpClient);
  end;
end;

procedure CanvasTextShadow(Canvas:TCanvas; text:string;x,y:integer;
          sh_color: TColor = 0; sh_x: integer = 2; sh_y: integer = 1);
var
 c:TColor;
 st:TBrushStyle;
begin
  with Canvas do begin
  c:=Font.Color;
  st:=Brush.Style;
  Font.Color:=sh_color;
  TextOut(x+sh_x,y+sh_y,text);
  Font.Color:=c;
  Brush.Style:=bsClear;
  TextOut(x,y,text);
  Brush.Style:=st;
  end;
end;

procedure CanvasTextShadowBorder(Canvas:TCanvas; text:string;x,y:integer;
          sh_color: TColor = 0; width: integer = 1);
var
 c:TColor;
 st:TBrushStyle;
begin
  With Canvas do begin
    c:=Font.Color;
    st:=Brush.Style;
    Font.Color:=sh_color;
    TextOut(x+width,y+width,text);
    Brush.Style:=bsClear;
    TextOut(x-width,y-width,text);
    TextOut(x+width,y-width,text);
    TextOut(x-width,y+width,text);
    Canvas.Font.Color:=c;
    TextOut(x,y,text);
    Brush.Style:=st;
  end;
end;

procedure GetAuthorsText(CustomForm: TForm; aLanguageID: String);
begin
with CustomForm do
 begin
  Canvas.Font.Color:= clWhite;
  Canvas.Brush.Style := bsClear;
  Canvas.Font.Name:='Segoe UI';
  Canvas.Font.Size := 14;
  CanvasTextShadowBorder(CustomForm.Canvas,_(GLOBAL_CPTN_ABOUT_TEXT1, aLanguageID),30,ClientHeight-130);
  CanvasTextShadowBorder(CustomForm.Canvas,_(GLOBAL_CPTN_ABOUT_TEXT2, aLanguageID),30,ClientHeight-100);
  CanvasTextShadowBorder(CustomForm.Canvas,ExtractFileName(ChangeFileExt(ParamStr(0),''))+' V1.7 (2022-2023)',30,ClientHeight-70);
  CanvasTextShadowBorder(CustomForm.Canvas,_(GLOBAL_CPTN_ABOUT_TEXT3, aLanguageID),30,ClientHeight-40);
 end;
end;

procedure PaintImageFromRes(CustomForm: TForm; ImageName: String);
var
 TempImage: TPicture;
 TempJpeg: TJpegImage;
 memPicture: TResourceStream;
begin
with CustomForm do
begin
memPicture := TResourceStream.Create(hInstance,ImageName,RT_RCDATA);
 try
  TempJpeg := TJPEGImage.Create;
   try
    TempJpeg.LoadFromStream(memPicture);
    Canvas.StretchDraw(Rect(0,0,Width,Height), TempJpeg);
   finally
    FreeAndNil(TempJpeg);
   end;
 finally
  FreeAndNil(memPicture);
 end;
end;
end;

procedure PaintImageFromFile(CustomForm: TForm; ImageName: String);
var
 TempImage: TPicture;
 TempJpeg: TJpegImage;
 memPicture: TResourceStream;
begin
with CustomForm do
begin
if not FileExists(GetBackgroundsFolder+ImageName) then
 begin
  PaintImageFromRes(CustomForm, 'table_00');
  OPMForm.Background := 'table_00';
  Exit;
 end else
if FileExists(GetBackgroundsFolder+ImageName) then
 begin
  TempImage := TPicture.Create;
   try
    TempImage.LoadFromFile(GetBackgroundsFolder+ImageName);
    Canvas.StretchDraw(Rect(0,0,Width,Height), TempImage.Graphic);
   finally
    FreeAndNil(TempImage);
   end;
 end;
end;
end;

procedure GetListImagesFromRes(ImageName: String; ListView: TListView; ImageList: TImageList; Index: Integer);
var
 TempJpeg: TJpegImage;
 memPicture: TResourceStream;
 ListItem: TListItem;
 Bitmap: TBitmap;
begin
memPicture := TResourceStream.Create(hInstance,ImageName,RT_RCDATA);
 try
  TempJpeg := TJPEGImage.Create;
  Bitmap := TBitmap.Create;
   try
    ListItem := ListView.Items.Add;
    ListItem.GroupID := 0;
    ListItem.SubItems.Text := ImageName;
    ListItem.ImageIndex := Index;
    TempJpeg.Scale := jsEighth;
    TempJpeg.LoadFromStream(memPicture);
    Bitmap.Assign(TempJpeg);
    Bitmap.PixelFormat := pf32bit;
    ResizeBmp(Bitmap,250, 150);
    ImageList.Insert(Index, Bitmap, nil);
   finally
    FreeAndNil(TempJpeg);
   end;
 finally
  FreeAndNil(memPicture);
  FreeAndNil(Bitmap);
 end;
end;

procedure FindImageFiles(MainForm: TForm; Dir: string; ImageList: TImageList; MainList: TListView; ClearList: Boolean);
var
 files: TStringDynArray;
 ListItem: TListItem;
 Bitmap: TBitmap;
 I: Integer;
begin
 with MainForm do
 begin
 if ClearList = True then
 begin
  MainList.Clear;
  ImageList.Clear;
 end;
  MainList.Items.BeginUpdate;
  files := TDirectory.GetFiles(Dir,'*.*',TSearchOption.soTopDirectoryOnly);
   begin
    for i := 0 to Length(files)-1 do
     begin
     if (ExtractFileExt(files[i]) = '.jpg') or (ExtractFileExt(files[i]) = '.jpeg') or
    (ExtractFileExt(files[i]) = '.bmp') or (ExtractFileExt(files[i]) = '.png') or
    (ExtractFileExt(files[i]) = '.tif') or (ExtractFileExt(files[i]) = '.tiff') then
     begin
      ListItem := MainList.Items.Add;
      ListItem.GroupID := 1;
      ListItem.SubItems.Text := ExtractFileName(files[i]);
      Bitmap := TBitmap.Create;
      try
       Bitmap.Handle := GetThumbnailImage(files[i], ImageList.Width, ImageList.Height);
       Bitmap.PixelFormat := pf32bit;
       ResizeBmp(Bitmap,250, 150);
       ImageList.Add( Bitmap, nil );
      finally
       Bitmap.Free;
      end;
      ListItem.ImageIndex := ImageList.Count - 1;
     end;
     end;
   end;
  MainList.Items.EndUpdate;
 end;
end;

procedure LangImagesFromRes(Button: TSpeedButton; ImageList: TImageList);
var
 TempImage: TPNGImage;
 Bitmap: TBitmap;
begin
 TempImage := TPNGImage.Create;
 Bitmap := TBitmap.Create;
  try
   TempImage.LoadFromResourceName(hInstance,'lng_usa');
   Bitmap.Assign(TempImage);
   ImageList.Add(Bitmap, nil);

   TempImage.LoadFromResourceName(hInstance,'lng_russia');
   Bitmap.Assign(TempImage);
   ImageList.Add(Bitmap, nil);

   TempImage.LoadFromResourceName(hInstance,'lng_romania');
   Bitmap.Assign(TempImage);
   ImageList.Add(Bitmap, nil);
  finally
   FreeAndNil(TempImage);
   FreeAndNil(Bitmap);
  end;
end;

procedure RecentFilesToMenu(PopupMenu: TMenuItem; Item1Caption: String);
var
 files: TStringDynArray;
 I: Integer;
 Item : TMenuItem;
begin
 PopupMenu.Clear;

 Item := TMenuItem.Create(PopupMenu);
 Item.Caption := Item1Caption;
 PopupMenu.Add(Item);
 Item := TMenuItem.Create(PopupMenu);
 Item.Caption := '-';
 PopupMenu.Add(Item);

 files := TDirectory.GetFiles(GetSaveFolder,'*.pzl',TSearchOption.soTopDirectoryOnly);
  begin
   for i := 0 to Length(files)-1 do
    begin
     Item := TMenuItem.Create(PopupMenu);
     Item.Caption := ChangeFileExt(ExtractFileName(files[i]),'');
     PopupMenu.Add(Item);
     end;
  end;
end;

end.
