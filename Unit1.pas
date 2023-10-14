unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GDIPAPI, GDIPOBJ, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, math, mmsystem, Vcl.Buttons, System.ImageList,
  Vcl.ImgList, ShellAPI, jpeg, pngimage, Vcl.Menus, IniFiles;

type
  TOPMForm = class(TForm)
    MPanel: TPanel;
    OPD: TOpenPictureDialog;
    Original: TImage;
    Original1: TImage;
    Panel2: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Panel3: TPanel;
    Label7: TLabel;
    Edit5: TEdit;
    UpDown5: TUpDown;
    Label8: TLabel;
    Edit6: TEdit;
    UpDown6: TUpDown;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    Label9: TLabel;
    Edit7: TEdit;
    UpDown7: TUpDown;
    Label10: TLabel;
    Edit8: TEdit;
    UpDown8: TUpDown;
    CheckBox7: TCheckBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    E1: TEdit;
    E2: TEdit;
    E3: TEdit;
    E4: TEdit;
    E5: TEdit;
    E6: TEdit;
    E7: TEdit;
    E8: TEdit;
    E9: TEdit;
    UpDown2: TUpDown;
    U8: TUpDown;
    U7: TUpDown;
    U6: TUpDown;
    U5: TUpDown;
    U4: TUpDown;
    U3: TUpDown;
    U2: TUpDown;
    U1: TUpDown;
    ib1: TSpeedButton;
    IL2: TImageList;
    ib2: TSpeedButton;
    ib3: TSpeedButton;
    ib4: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    ib5: TSpeedButton;
    ib6: TSpeedButton;
    ib7: TSpeedButton;
    ib8: TSpeedButton;
    ib9: TSpeedButton;
    UpDown3: TUpDown;
    IL1: TImageList;
    ib10: TSpeedButton;
    ib11: TSpeedButton;
    ib12: TSpeedButton;
    ib13: TSpeedButton;
    ib14: TSpeedButton;
    ib15: TSpeedButton;
    ib16: TSpeedButton;
    ib17: TSpeedButton;
    ib18: TSpeedButton;
    ib19: TSpeedButton;
    ib20: TSpeedButton;
    ib21: TSpeedButton;
    ib22: TSpeedButton;
    ib23: TSpeedButton;
    ib24: TSpeedButton;
    ib25: TSpeedButton;
    E10: TEdit;
    U10: TUpDown;
    E11: TEdit;
    U11: TUpDown;
    ib26: TSpeedButton;
    Panel6: TPanel;
    CheckBox2: TCheckBox;
    Image111: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    CheckBox3: TCheckBox;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ResetButton: TButton;
    BKGRButton: TButton;
    LanguageButton: TSpeedButton;
    LangMenu: TPopupMenu;
    English1: TMenuItem;
    Russian1: TMenuItem;
    ImageList1: TImageList;
    Romanian1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormResize(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    function vertical(x1,x2,x3,x4:real):tgpgraphicspath;
    function gorizontal(x1,x2,x3,x4:real):tgpgraphicspath;
    function vertical1(x1,x2,x3,x4:real):tgpgraphicspath;
    function gorizontal1(x1,x2,x3,x4:real):tgpgraphicspath;
    procedure CheckBox5Click(Sender: TObject);
    function lighter(x:TRGBTriple;y:real):TRGBTriple;
    function darker(x:TRGBTriple;y:real):TRGBTriple;
    procedure dark(i,j:integer);
    procedure light(i,j:integer);
    function s(x:integer):tpoint;
    function inarray(x:integer):integer;
    procedure FormPaint(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);//Перевод из числа в координаты i,j
    procedure attach(x,y:integer);
    procedure ib1Click(Sender: TObject);
    procedure ib2Click(Sender: TObject);
    procedure ib3Click(Sender: TObject);
    procedure ib4Click(Sender: TObject);
    procedure ib5Click(Sender: TObject);
    procedure ib6Click(Sender: TObject);
    procedure ostpaint;
    procedure ib7Click(Sender: TObject);
    procedure ib8Click(Sender: TObject);
    procedure ib9Click(Sender: TObject);
    procedure benable;
    procedure bdisable;
    procedure ib10Click(Sender: TObject);
    procedure normindex;
    procedure ib26MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ib26MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SaveGame;
    procedure LoadGame(sFileName: String);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ResetButtonClick(Sender: TObject);
    procedure BKGRButtonClick(Sender: TObject);
    procedure LanguageButtonClick(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PopupMenuPopup(Sender: TObject);


  private
    { Private declarations }
    function GetFConfig: TMemIniFile;
    procedure RegIni(Write: Boolean);
    procedure WMNCMOUSEMOVE(var msg: tmessage); message WM_NCMOUSEMOVE;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure RecentOnClick(Sender: TObject);
    procedure OpenSaveFolderClick(Sender: TObject);
  public
    { Public declarations }
    FConfig: TMemIniFile;
    Background,sFileName: String;
  protected

  end;

  type
  TRGBT = ARRAY[Word] of TRGBTriple;   //Для объемной рамки, рисуемой при помощи функции Сканлайн
  pRGBT = ^TRGBT;


  var
  OPMForm: TOPMForm;
  step:integer; //Состояние игры 0-Нет игры, 1-картинка загружена, 2-созданы паззлы, 3-режем и играем
  kolx,koly,tekx,teky:integer; //Количество пазлов по Х и по У, размеры картинки, из которой делается пазл
  ind:array of array of TGPPointF;
  kolpr,dexx:integer; //Проценд деформации угловых точек и дельта размера пазла
  bmp,bmp1,scr,sscr:tbitmap;
  vpath,gpath:array of array of tgpgraphicspath; //Массив траекторий
  vreg: tGpRegion; //Временный TGP-регион
  reg:array of array of hrgn; //Массив обычных регионов, получаемых из TGP
  im:array of array of tbitmap; //Массив картинок для каждой из групп пазлов
  IGPG:TGPGraphics;//Объект GDI+
  path,path1: tgpgraphicspath;//Патчи-траектории для отрисовки пазлов
  br1:hbrush;
  pop,pop1,pop2:pRGBT;//Указатели массива пикселей для сканлайна
  pazl:array of array of integer; //Основной массив пазлов, представляющих собой группы из кусочков-теков
  ptab:array of integer; //Таб-позиции каждого из пазлов для отображения
  ost,pnum:integer; //Остаток из пазлов с учетом уже собранных частей и номер текущего пазла
  px,py:integer; //Координаты мыши над пазлом
  att:integer; //Точность, она же чувствительность и сложность
  ix,iy:integer; //Вспомогательные координаты, чтобы сдвинуть пазл относительно мыши после attach
  hR2,hr1: THandle; pD2,pd1: pointer; //Звук из ресурсов
  ptek:integer; //Статус стороны тека
  gatek,vatek:array of array of integer; //Массивы статусов сторон
  filtr:array [1..16,1..4] of integer = ((-1,1,-1,1),(1,-1,1,-1),(-1,-1,-1,1),(-1,1,-1,-1),(1,1,-1,1),(-1,1,1,1),
  (1,-1,-1,-1),(1,1,1,-1),(1,-1,1,1),(-1,-1,1,-1),(1,-1,-1,1),(-1,1,1,-1),
  (-1,-1,-1,-1),(1,1,-1,-1),(1,1,1,1),(-1,-1,1,1));//Массив для фильтрации пазлов по форме
  sx,sy,sz:integer; //Координаты захвата для точек рисующих линию своего варианта
  Points1: array [0..10] of TGPPointF;
  p:tgppen;
  f:file;
  ist:tbytesstream;
  per: array[0..7] of ^integer =((@step),(@kolx),(@koly),(@tekx),(@teky),(@ost),(@pnum),(@att));

implementation

{$R *.dfm}

uses PuzzleUnit, Unit2, Utils, Translation;
{$R res.res}

//Различные функции и процедуры************************************************

procedure CreatePuzzleForm;
begin
 PuzzleForm.OnMouseDown := OPMForm.FormMouseDown;
 PuzzleForm.OnMouseMove := OPMForm.FormMouseMove;
 PuzzleForm.OnMouseUp := OPMForm.FormMouseUp;
 PuzzleForm.OnMouseWheelDown := OPMForm.FormMouseWheelDown;
 PuzzleForm.OnMouseWheelUp := OPMForm.FormMouseWheelUp;
 PuzzleForm.OnPaint := OPMForm.FormPaint;
 PuzzleForm.OnResize := OPMForm.FormResize;
 OPMForm.original1.BringToFront;
 OPMForm.original1.Align:=alclient;
 PuzzleForm.Show;
end;

procedure OpenPLZFile(sFile: String);
begin
with OPMForm do
 begin
  //очищаем от предыдущего изображение
  Original.Picture := nil;
  Original.Visible := False;
  Original1.Picture := nil;
  Original1.Visible := False;
  loadgame(sFile);
  sFileName := sFile;
  //Делаем пазл форму видимую
  CreatePuzzleForm;
  ostpaint;//очищаем после предыдущего файла .pzl
  exit;
 end;
end;

procedure FileImageToPuzzle(sFile: String; Mode: Integer);
var
URLImage: TMemoryStream;
begin
with OPMForm do
 begin
   if PuzzleForm.Showing then PuzzleForm.Close;//при tab,alt,... изображения пропадает
   scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
   OPMForm.Repaint;
   PuzzleForm.Repaint;
   original.AutoSize:=true;
   original.Stretch:=false;
   //Mode=0 это файл и 1 это URL
   if Mode = 0 then
    begin
     original.Picture.LoadFromFile(sFile);
     sFileName := sFile;
    end
   else
   if Mode = 1 then
    begin
     URLImage := TMemoryStream.Create;
      try
       LoadPictureFromURL(sFile,URLImage);
       original.Picture.LoadFromStream(URLImage);
       ExtractUrlFileName(sFileName);
       if sFileName = '' then sFileName := 'URL_'+FormatDateTime('yyyy"_"mm"_"dd"', Date);
      finally
       FreeAndNil(URLImage);
      end;
    end;
   original.AutoSize:=false;
   original.Stretch:=true;
   original.Left:=round(clientwidth/2-original.Width/2);
   original.top:=round(clientheight/2-original.height/2);
   original.Visible:=true;
   original1.Visible:=false;
   original1.Align:=alnone;
   original1.Center:=false;
   original1.Proportional:=false;
   step:=1;
   ib2.Enabled:=true;
   ib3.Enabled:=false;
   ib5.ImageIndex:=12;
   ib5.HotImageIndex:=13;
   ib5.Enabled:=false;
   bdisable;
 end;
end;

procedure Translate(aLanguageID: String);
var
 i: Integer;
begin
with OPMForm do
 begin
  LanguageButton.Hint := _(GLOBAL_CPTN_BTN_LANG, aLanguageID);
  ib1.Hint := _(GLOBAL_HINT_BTN_ib1, aLanguageID);
  ib2.Hint := _(GLOBAL_HINT_BTN_ib2, aLanguageID);
  ib3.Hint := _(GLOBAL_HINT_BTN_ib3, aLanguageID);
  ib4.Hint := _(GLOBAL_HINT_BTN_ib4, aLanguageID);
  ib5.Hint := _(GLOBAL_HINT_BTN_ib5, aLanguageID);
  ib6.Hint := _(GLOBAL_HINT_BTN_ib6, aLanguageID);
  ib7.Hint := _(GLOBAL_HINT_BTN_ib7, aLanguageID);
  ib8.Hint := _(GLOBAL_HINT_BTN_ib8, aLanguageID);
  ib9.Hint := _(GLOBAL_HINT_BTN_ib9, aLanguageID);
  for i := 10 to 25 do
   begin
    (FindComponent('ib'+IntToStr(i)) as TSpeedButton).Hint:=_(GLOBAL_HINT_BTN_ib10_25, aLanguageID);
   end;
  ib26.Hint := _(GLOBAL_HINT_BTN_ib26, aLanguageID);
  Label3.Caption := _(GLOBAL_CPTN_LBL_LBL3, aLanguageID);
  Label4.Caption := _(GLOBAL_CPTN_LBL_LBL4, aLanguageID);
  Panel2.Hint := _(GLOBAL_HINT_PNL_PNL2,aLanguageID);
  Label9.Caption := _(GLOBAL_CPTN_LBL_LBL9, aLanguageID);
  Label9.Hint := _(GLOBAL_HINT_LBL_LBL9, aLanguageID);
  Label10.Caption := _(GLOBAL_CPTN_LBL_LBL10, aLanguageID);
  Label10.Hint := _(GLOBAL_HINT_LBL_LBL10, aLanguageID);
  BKGRButton.Caption := _(GLOBAL_CPTN_BTN_BKGR, aLanguageID);
  BKGRButton.Hint := _(GLOBAL_HINT_BTN_BKGR, aLanguageID);
  Label7.Caption := _(GLOBAL_CPTN_LBL_LBL7,aLanguageID);
  Label7.Hint := _(GLOBAL_HINT_LBL_LBL7,aLanguageID);
  Label8.Caption := _(GLOBAL_CPTN_LBL_LBL8,aLanguageID);
  Label8.Hint := _(GLOBAL_HINT_LBL_LBL8,aLanguageID);
  CheckBox1.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX1,aLanguageID);
  CheckBox1.Hint := _(GLOBAL_HINT_CHKBOX_CHKBOX1,aLanguageID);
  CheckBox7.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX7,aLanguageID);
  CheckBox7.Hint := _(GLOBAL_HINT_CHKBOX_CHKBOX7,aLanguageID);
  Edit1.Hint := _(GLOBAL_HINT_EDIT_ED1,aLanguageID);
  E1.Hint := _(GLOBAL_HINT_EDIT_E1,aLanguageID);
  E2.Hint := _(GLOBAL_HINT_EDIT_E1,aLanguageID);
  E3.Hint := _(GLOBAL_HINT_EDIT_E1,aLanguageID);
  E4.Hint := _(GLOBAL_HINT_EDIT_E1,aLanguageID);
  E10.Hint := _(GLOBAL_HINT_EDIT_E1,aLanguageID);
  E5.Hint := _(GLOBAL_HINT_EDIT_E5,aLanguageID);
  E6.Hint := _(GLOBAL_HINT_EDIT_E5,aLanguageID);
  E7.Hint := _(GLOBAL_HINT_EDIT_E5,aLanguageID);
  E8.Hint := _(GLOBAL_HINT_EDIT_E5,aLanguageID);
  E11.Hint := _(GLOBAL_HINT_EDIT_E5,aLanguageID);
  E9.Hint := _(GLOBAL_HINT_EDIT_E9,aLanguageID);
  CheckBox5.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX5,aLanguageID);
  CheckBox6.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX6,aLanguageID);
  CheckBox3.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX3,aLanguageID);
  CheckBox3.Hint := _(GLOBAL_HINT_CHKBOX_CHKBOX3,aLanguageID);
  CheckBox2.Caption := _(GLOBAL_CPTN_CHKBOX_CHKBOX2,aLanguageID);
  CheckBox2.Hint := _(GLOBAL_HINT_CHKBOX_CHKBOX2,aLanguageID);
  ResetButton.Caption :=_(GLOBAL_CPTN_BTN_RESET,aLanguageID);
  ResetButton.Hint :=_(GLOBAL_HINT_BTN_RESET,aLanguageID);
  N1.Caption := _(GLOBAL_CPTN_MENUITEM_N1,aLanguageID);
  N2.Caption := _(GLOBAL_CPTN_MENUITEM_N2,aLanguageID);
  N4.Caption := _(GLOBAL_CPTN_MENUITEM_N4,aLanguageID);
  //Для обновление текста на главном форме
  Repaint;
 end;
end;

procedure TimerCallBack1(uTimerID, uMessage: UINT; dwUser, dw1, dw2: DWORD); stdcall;
begin
with OPMForm do
 begin
  if (mpanel.Visible=false)and(Mouse.CursorPos.Y = Screen.DesktopTop) then
  begin
   mpanel.Visible:=true;
   mpanel.BringToFront;
   PuzzleForm.SendToBack;
  end;
 end;
end;

//Сохранение и загрузка настройки**********************************************

function TOPMForm.GetFConfig: TMemIniFile;
var
 Dir: String;
begin
 SetCurrentDir(ExtractFilePath(ParamStr(0)));
 if FileExists(ExtractFilePath(ParamStr(0))+'settings.ini') then
 Dir := ExtractFilePath(ParamStr(0)) else
 begin
  if not DirectoryExists(GetAppFolder + GetNameApp) then
  CreateDirectory(PChar(GetAppFolder + GetNameApp),nil);
  Dir := GetAppFolder + GetNameApp;
 end;
 if FConfig = nil then
 FConfig := TMemIniFile.Create(Dir+'settings.ini',TEncoding.UTF8);
 Result := FConfig;
end;

procedure TOPMForm.RegIni(Write: Boolean);
var
 i: Integer;
begin
//Записывается настройки
GetFConfig;
if Write = true then
 begin
  if WindowState = wsNormal then
    FConfig.WriteInteger('Window','WindowState', 0) else
  if WindowState = wsMaximized then
    FConfig.WriteInteger('Window','WindowState', 1);
  if BorderStyle <> bsNone then //если форма не находится в полноэкранный режим
  if WindowState = wsNormal then
   begin
    FConfig.WriteInteger('Window','Top',Top);
    FConfig.WriteInteger('Window','Left',Left);
    FConfig.WriteInteger('Window','Width',Width);
    FConfig.WriteInteger('Window','Height',Height);
   end;
  FConfig.WriteString('Window','Language',LanguageButton.Hint);
  FConfig.WriteString('Puzzle','Edit3',Edit3.Text);
  FConfig.WriteString('Puzzle','Edit4',Edit4.Text);
  FConfig.WriteString('Puzzle','Edit7',Edit7.Text);
  FConfig.WriteString('Puzzle','Edit8',Edit8.Text);
  FConfig.WriteString('Puzzle','Edit5',Edit5.Text);
  FConfig.WriteString('Puzzle','Edit6',Edit6.Text);
  FConfig.WriteString('Puzzle','Edit1',Edit1.Text);
  FConfig.WriteString('Puzzle','E1',E1.Text);
  FConfig.WriteString('Puzzle','E2',E2.Text);
  FConfig.WriteString('Puzzle','E3',E3.Text);
  FConfig.WriteString('Puzzle','E4',E4.Text);
  FConfig.WriteString('Puzzle','E5',E5.Text);
  FConfig.WriteString('Puzzle','E6',E6.Text);
  FConfig.WriteString('Puzzle','E7',E7.Text);
  FConfig.WriteString('Puzzle','E8',E8.Text);
  FConfig.WriteString('Puzzle','E9',E9.Text);
  FConfig.WriteString('Puzzle','E10',E10.Text);
  FConfig.WriteString('Puzzle','E11',E11.Text);
  FConfig.WriteBool('Puzzle','ClassicPuzzle',CheckBox1.Checked);
  FConfig.WriteBool('Puzzle','PuzzleFrame',CheckBox7.Checked);
  FConfig.WriteBool('Puzzle','Hints',CheckBox5.Checked);
  FConfig.WriteBool('Puzzle','Sounds',CheckBox6.Checked);
  FConfig.WriteBool('Puzzle','Save',CheckBox3.Checked);
  FConfig.WriteBool('Puzzle','CustomPuzzle',CheckBox2.Checked);
  FConfig.WriteString('Puzzle','Background',Background);
  for i := 2 to 10 do
   begin
    FConfig.WriteInteger('Puzzle','TopImage'+IntToStr(i),(FindComponent('Image'+IntToStr(i)) as TImage).Top);
    FConfig.WriteInteger('Puzzle','LeftImage'+IntToStr(i),(FindComponent('Image'+IntToStr(i)) as TImage).Left);
   end;
  FConfig.UpdateFile;
 end else
//Читаем настройки
 begin
  if FConfig.ReadInteger('Window','WindowState', 1) = 1 then
  WindowState := wsMaximized else
  if FConfig.ReadInteger('Window','WindowState', 1) = 0 then
   begin
    WindowState := wsNormal;
    Top := FConfig.ReadInteger('Window','Top',Top);
    Left := FConfig.ReadInteger('Window','Left',Left);
    Width := FConfig.ReadInteger('Window','Width',Width);
    Height := FConfig.ReadInteger('Window','Height',Height);
  end;
  LanguageButton.Hint := FConfig.ReadString('Window','Language', 'English');
  LanguageButton.ImageIndex := LangMenu.Items.Find(LanguageButton.Hint).ImageIndex;
  Translate(LanguageButton.Hint);
  UpDown3.Position := StrToInt(FConfig.ReadString('Puzzle','Edit3',Edit3.Text));
  UpDown4.Position := StrToInt(FConfig.ReadString('Puzzle','Edit4',Edit4.Text));
  UpDown7.Position := StrToInt(FConfig.ReadString('Puzzle','Edit7',Edit7.Text));
  UpDown8.Position := StrToInt(FConfig.ReadString('Puzzle','Edit8',Edit8.Text));
  UpDown5.Position := StrToInt(FConfig.ReadString('Puzzle','Edit5',Edit5.Text));
  UpDown6.Position := StrToInt(FConfig.ReadString('Puzzle','Edit6',Edit6.Text));
  UpDown1.Position := StrToInt(FConfig.ReadString('Puzzle','Edit1',Edit1.Text));
  U1.Position := StrToInt(FConfig.ReadString('Puzzle','E1',E1.Text));
  U2.Position := StrToInt(FConfig.ReadString('Puzzle','E2',E2.Text));
  U3.Position := StrToInt(FConfig.ReadString('Puzzle','E3',E3.Text));
  U4.Position := StrToInt(FConfig.ReadString('Puzzle','E4',E4.Text));
  U5.Position := StrToInt(FConfig.ReadString('Puzzle','E5',E5.Text));
  U6.Position := StrToInt(FConfig.ReadString('Puzzle','E6',E6.Text));
  U7.Position := StrToInt(FConfig.ReadString('Puzzle','E7',E7.Text));
  U8.Position := StrToInt(FConfig.ReadString('Puzzle','E8',E8.Text));
  UpDown2.Position := StrToInt(FConfig.ReadString('Puzzle','E9',E9.Text));
  U10.Position := StrToInt(FConfig.ReadString('Puzzle','E10',E10.Text));
  U11.Position := StrToInt(FConfig.ReadString('Puzzle','E11',E11.Text));
  CheckBox1.Checked := FConfig.ReadBool('Puzzle','ClassicPuzzle',True);
  CheckBox7.Checked := FConfig.ReadBool('Puzzle','PuzzleFrame',True);
  CheckBox5.Checked := FConfig.ReadBool('Puzzle','Hints',True);
  CheckBox6.Checked := FConfig.ReadBool('Puzzle','Sounds',True);
  CheckBox3.Checked := FConfig.ReadBool('Puzzle','Save',True);
  CheckBox2.Checked := FConfig.ReadBool('Puzzle','CustomPuzzle',False);
  Background := FConfig.ReadString('Puzzle','Background','opm_res_table_0');
  for i := 2 to 10 do
   begin
    (FindComponent('Image'+IntToStr(i)) as TImage).Top:=FConfig.ReadInteger('Puzzle','TopImage'+IntToStr(i),(FindComponent('Image'+IntToStr(i)) as TImage).Top);
    (FindComponent('Image'+IntToStr(i)) as TImage).Left:=FConfig.ReadInteger('Puzzle','LeftImage'+IntToStr(i),(FindComponent('Image'+IntToStr(i)) as TImage).Left);
   end;
 end;
end;

//Процедура перетаскивание*****************************************************
procedure TOPMForm.WMDropFiles(var Msg: TWMDropFiles);
var
 HF: THandle;
 i, FileCount: integer;
 s: array [0..1023] of Widechar;
begin
 inherited;
 HF := Msg.Drop;
 try
 FileCount := DragQueryFile(HF, $FFFFFFFF, nil, 0);
 for i := 0 to FileCount - 1 do
  begin
   DragQueryFile(HF, i, s, sizeof(s));
   if ExtractFileExt(s) ='.pzl' then
    begin
     OpenPLZFile(s)
    end else
    if (ExtractFileExt(s) = '.jpg') or (ExtractFileExt(s) = '.jpeg') or
    (ExtractFileExt(s) = '.bmp') or (ExtractFileExt(s) = '.png') or
    (ExtractFileExt(s) = '.tif') or (ExtractFileExt(s) = '.tiff') then
    FileImageToPuzzle(s,0);
  end;
 finally
  DragFinish(HF);
 end;
  Msg.Result := 0;
end;


//Инициализация компонентов и переменных ****************************************************************************************

procedure DrawCustomPuzzle;
var
 i: Integer;
begin
with OPMForm do
 begin
  sz:=0;//Состояние перемещаемых точек
   for i := 1 to 11 do
    begin
     points1[i-1].X:=(FindComponent('Image'+inttostr(i)) as timage).Left-11;
     points1[i-1].Y:=(FindComponent('Image'+inttostr(i)) as timage).Top-5;
    end;
  P:=TGPPen.Create(MakeColor(0, 0, 255),1);
  igpg.DrawCurve(p,PGPPointF(@Points1),11,strtofloat(e9.Text)/100);
  image111.Refresh;
 end;
end;

procedure TOPMForm.FormCreate(Sender: TObject);
var
 i:integer;
begin
Position := poDesigned;
//Загружаем настройки
RegIni(False);
//Определяем подсказки для клавиш
Application.HintHidePause := 5000;
step:=0;
mpanel.Height:=85;
//Создаем GDI+
IGPG := TGPGraphics.Create(image111.Canvas.Handle);
br1:= createsolidbrush(clblack);
path:= tgpgraphicspath.Create();
path1:= tgpgraphicspath.Create();
kolx:=0;
bmp:=tbitmap.Create;
bmp1:=tbitmap.Create;
bmp.PixelFormat:=pf24bit;
bmp1.PixelFormat:=pf24bit;
scr:=tbitmap.Create;
sscr:=tbitmap.Create;
hR2:=LoadResource( hInstance, FindResource(hInstance, 'w3', RT_RCDATA));
hR1:=LoadResource( hInstance, FindResource(hInstance, 'w1', RT_RCDATA));
pD2 := LockResource(hR2);
pD1 := LockResource(hR1);
//Рисуем свой вариант пазла
DrawCustomPuzzle;
//Включаем перетаскивание изображения
DragAcceptFiles(Handle,true);
//Вытаскиваем изображения из ресурса
LangImagesFromRes(LanguageButton, ImageList1);
original1.Align:=alclient;
end;

procedure TOPMForm.FormDestroy(Sender: TObject);
begin
if (step>2) and (ost>1) and (checkbox3.Checked) then savegame;
//Выключаем перетаскивание изображения
DragAcceptFiles(Handle,false);
//Сохраняем настройки
RegIni(True);
FConfig.Free;
end;

//Процедуры кнопок меню *********************************************************************************************************

procedure tOPMForm.WMNCMOUSEMOVE(var
      msg: tmessage);
begin
if (mpanel.Visible=false)and(mouse.CursorPos.Y-OPMForm.top<=30) then
 begin
  mpanel.Visible:=true;
  mpanel.BringToFront;
  PuzzleForm.SendToBack;
 end;
end;

procedure TOPMForm.ib4Click(Sender: TObject);
begin
if mpanel.Height=85 then mpanel.Height:=315 else mpanel.Height:=85;
end;

procedure TOPMForm.CheckBox5Click(Sender: TObject);
begin
mpanel.ShowHint:=checkbox5.Checked;
end;

procedure tOPMForm.benable;
var i:integer;
begin
for i := 6 to 26 do
 Tspeedbutton(FindComponent('ib'+IntToStr(i))).enabled:=true;
end;

procedure tOPMForm.bdisable;
var i:integer;
begin
for i := 6 to 26 do
 Tspeedbutton(FindComponent('ib'+IntToStr(i))).enabled:=false;
end;

procedure TOPMForm.ib26MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//Делаем вторую форму невидимой и убираем белый фон с помощью прозрачность
if button=mbLeft then //при нажатие правой кнопки изображения остаётся на форме
 begin
  PuzzleForm.Visible := False;
  original1.Transparent := True;
  original1.Visible:=true;
  PuzzleForm.Repaint;
 end;
end;

procedure TOPMForm.ib26MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//Делаем вторую форму видимой и убираем прозрачность
if button=mbLeft then //при нажатие правой кнопки изображения остаётся на форме
 begin
  PuzzleForm.Visible := True;
  original1.Transparent := False;
  original1.Visible:=false;
  PuzzleForm.Repaint;
 end;
end;

//Загружаем картинку для пазла *************************************************************************************************

procedure TOPMForm.ib1Click(Sender: TObject);
var
 pt : TPoint;
begin
 pt.x := MPanel.Left;
 pt.y := TButton(Sender).Top + TButton(Sender).Height + 1;
 pt := Self.ClientToScreen(pt);
 PopupMenu.Popup( pt.x, pt.y );
end;

//Уменьшаем или увеличиваем картинку колесиком мышки

procedure TOPMForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if step<>1 then exit;
 if (original.Width<400) or (original.Height<300) then exit;
 original.Width:=round(original.Width*0.97);
 original.Height:=round(original.height*0.97);
 FormResize(original);
 end;

procedure TOPMForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if step<>1 then exit;
 if (original.Width>screen.Width) or (original.Height>screen.Height) then exit;
 original.Width:=round(original.Width*1.03);
 original.Height:=round(original.height*1.03);
 FormResize(original);
end;


//Нарезаем картинку на элементы-пазлы, создаем массивы точек и регионов ********************************************************

procedure TOPMForm.ib2Click(Sender: TObject);
var
i,j:integer;
begin
//Чистим регионы, если это повторный вызов процедуры
if kolx<>0 then
   for i := 1 to kolx do
    for j := 1 to koly do
     deleteobject(reg[i,j]);
//Готовим переменные и изображения
step:=2;
kolx:=strtoint(edit3.Text);
koly:=strtoint(edit4.Text);
kolpr:=strtoint(edit5.Text);
tekx:=original.Width;
teky:=original.height;
bmp.Width:=tekx;
bmp.height:=teky;
bmp1.Width:=tekx;
bmp1.height:=teky;
original.Visible:=false;
original1.Left:=original.Left;
original1.Top:=original.Top;
original1.Width:=original.Width;
original1.Height:=original.Height;
original1.Visible:=true;
bmp.Canvas.StretchDraw(rect(0,0,bmp.Width,bmp.Height),original.Picture.Graphic);
//Убираем черный цвет
bmp1.Canvas.Brush.Color:=rgb(1,1,1);
bmp1.Canvas.FillRect(rect(0,0,bmp1.Width,bmp1.Height));
BitBlt(bmp.Canvas.Handle,0,0,tekx,teky, bmp1.Canvas.Handle,0,0,srcpaint);
//Убираем белый цвет
bmp1.Canvas.Brush.Color:=rgb(255,255,254);
bmp1.Canvas.FillRect(rect(0,0,tekx,teky));
BitBlt(bmp.Canvas.Handle,0,0,tekx,teky, bmp1.Canvas.Handle,0,0,SrcAnd);
original1.Picture.Bitmap:=bmp;
//Создаем и заполняем массив угловых точек
SetLength (ind,kolx+1,koly+1);
dexx:=round(min(tekx/kolx,teky/koly));//Находим минимальную дельту для пазла
for j:= 0 to koly do
  for i:= 0 to kolx do
    begin
    if (i<kolx) and (i>0) then ind[i,j].x:=i*round(tekx/kolx)+(1-2*round(random))*random(round(tekx/kolx*kolpr/100));
    if (j<koly) and (j>0) then ind[i,j].Y:=j*round(teky/koly)+(1-2*round(random))*random(round(teky/koly*kolpr/100));
    //Заполняем края точными значениями, чтобы исключить влияние округления
    if i=kolx then ind [kolx,j].x:=tekx;
    if j=koly then ind [i,koly].y:=teky;
    end;
setlength(vpath,kolx+1,koly+1);
setlength(gpath,kolx+1,koly+1);
setlength(reg,kolx+1,koly+1);
setlength(gatek,kolx+1,koly+1);
setlength(vatek,kolx+1,koly+1);
//Заполняем массив траекторий
if CheckBox2.Checked then
 begin
 //Рисуем вертикальные линии
 for j:= 0 to koly-1 do
  for i:= 0 to kolx do
     begin
     vpath[i,j]:=vertical1(ind[i,j].X,ind[i,j].Y,ind[i,j+1].x,ind[i,j+1].Y);
     vatek[i,j]:=ptek;
     end;
 //Рисуем горизонтальные линии
 for i := 0 to kolx-1 do
  for j := 0 to koly do
     begin
     gpath[i,j]:=gorizontal1(ind[i,j].X,ind[i,j].Y,ind[i+1,j].x,ind[i+1,j].Y);
     gatek[i,j]:=ptek;
     end;
 end else
 begin
 //Рисуем вертикальные линии
 for j:= 0 to koly-1 do
  for i:= 0 to kolx do
     begin
     vpath[i,j]:=vertical(ind[i,j].X,ind[i,j].Y,ind[i,j+1].x,ind[i,j+1].Y);
     vatek[i,j]:=ptek;
     end;
 //Рисуем горизонтальные линии
 for i := 0 to kolx-1 do
  for j := 0 to koly do
     begin
     gpath[i,j]:=gorizontal(ind[i,j].X,ind[i,j].Y,ind[i+1,j].x,ind[i+1,j].Y);
     gatek[i,j]:=ptek;
     end;
 end;
//Создаем регионы пазлов
for i := 1 to kolx do
 for j := 1 to koly do
   begin
   path.addpath(vpath[i-1,j-1],true);
   path.AddPath(gpath[i-1,j],true);
   path1.AddPath(gpath[i-1,j-1],true);
   path1.AddPath(vpath[i,j-1],true);
   path1.Reverse;
   path.AddPath(path1,true);
   vreg:=tGPRegion.Create(Path);
   reg[i,j]:=vreg.GetHRGN(igpg);
   path.Reset;path1.Reset;
   vreg.Free;
   frameRgn(bmp.canvas.Handle,reg[i,j],br1,1,1);
   end;
 //Рисуем границы пазлов - объемные или обычные
 if checkbox7.Checked then
  for j:=0 to teky-1 do
  begin
      pop:=bmp.ScanLine[j];
      pop1:=original1.picture.bitmap.ScanLine[j];
      for i:=0 to tekx-1 do
      begin
       if (pop[i].rgbtBlue=0) and (pop[i].rgbtGreen=0) and (pop[i].rgbtRed=0) then
        begin
         if (i=0) or (j=teky-1) then
         begin
         dark(i,j);continue;
         end;
         if (j=0) or (i=tekx-1) then
         begin
         light(i,j);continue;
         end;
        pop2:=bmp.ScanLine[j+1];
        if (pop2[i-1].rgbtBlue=0) and (pop2[i-1].rgbtGreen=0) and (pop2[i-1].rgbtRed=0) then
         begin
         dark(i,j);continue;
         end;
        pop2:=bmp.ScanLine[j-1];
        if (pop2[i+1].rgbtBlue=0) and (pop2[i+1].rgbtGreen=0) and (pop2[i+1].rgbtRed=0) then
         begin
         light(i,j);continue;
         end;
        end;
      end;
  end else
   original1.Picture.Bitmap:=bmp;
   ib3.Enabled:=true;
end;

//Процедура нарезки и разбрасывания пазлов *************************************************************************************

procedure TOPMForm.ib3Click(Sender: TObject);
var
i,j,k:integer;
buf:tbitmap;rec:trect;
r:real;
begin
step:=3;
ib2.Enabled:=false;
ib3.Enabled:=false;
ib5.Enabled:=true;
benable;
//Режем
original1.Visible:=false;
OPMForm.Repaint;
PuzzleForm.Repaint;
setlength(im,kolx+1,koly+1);
scr.Width:=clientwidth;
scr.Height:=clientheight;
scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
sscr.Width:=scr.Width;
sscr.Height:=scr.Height;
buf:=tbitmap.Create;
buf.Width:=tekx;buf.Height:=teky;
for j:= 1 to koly do
for i:= 1 to kolx do
  begin
   buf.Canvas.Brush.Bitmap:=nil;
   buf.Canvas.Brush.Color:=clwhite;
   buf.Canvas.FillRect(rect(0,0,tekx,teky));
   buf.Canvas.Brush.Bitmap:=original1.Picture.Bitmap;
   im[i,j]:=tbitmap.Create;
   GetRgnBox(reg[i,j],rec);
   im[i,j].Width:=rec.Width;
   im[i,j].height:=rec.Height;
   PaintRgn (buf.Canvas.Handle,reg[i,j]);
   im[i,j].Canvas.Draw(-REC.Left,-REC.Top,buf);
   im[i,j].PixelFormat:=pf24bit;
   im[i,j].TransparentColor := clWhite;
   im[i,j].Transparent:=true;
  end;
//Заполняем основной массив пазлов и разбрасываем их в выбранном порядке
 pazl:=nil;
 setlength(pazl,kolx*koly+1,kolx*koly+3);
 setlength(ptab,kolx*koly+1);
  k:=0;
  for j:=1 to koly do
  for i:=1 to kolx do
  begin
  inc(k);
  //Размешиваем равномерно
  pazl[k,0]:=RandomRange(0,clientwidth-im[i,j].Width);
  pazl[k,1]:=randomrange(0,clientheight-im[i,j].Height);
  pazl[k,2]:=k;
  scr.canvas.Draw(pazl[k,0],pazl[k,1],im[i,j]);
  ptab[k]:=k;
  end;
 PuzzleForm.canvas.Draw(0,0,scr);
 ost:=kolx*koly;
 buf.Free;
 att:=strtoint(edit7.Text);
 original1.Align:=alclient;
 original1.Center:=true;
 original1.Proportional:=true;
 //Делаем пазл форму видимую
 CreatePuzzleForm;
 end;

//Процедуры для выбора и перемещения пазлов ************************************************************************************

//Нажатие на форму или пазл мышкой
procedure TOPMForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 i,j,k:integer;
begin
 //Если нажато колесико меняем тип курсора
 if button=mbMiddle then
 begin
 if screen.Cursor=crDefault then screen.Cursor:=crHandPoint else screen.Cursor:=crDefault;
 exit;
 end;
 if step<>3 then exit;
 //Ищем пазл под мышкой
  for k:= ost downto 0 do
  begin
  if k=0 then exit;   //Если не найдено ни одного паззла, то выход
  i:=ptab[k];
  if (x>pazl[i,0]) and (x<pazl[i,0]+im[s(i).x,s(i).y].width) then
  if (y>pazl[i,1]) and (y<pazl[i,1]+im[s(i).x,s(i).y].height) then
  if im[s(i).x,s(i).y].Canvas.Pixels[x-pazl[i,0],y-pazl[i,1]]<>clwhite then break;
  end;
  //Если нажата правая кнопка
  if button=mbRight then
  begin
   //Если выбран режим вывести вниз - выводим вниз
   if screen.Cursor=crHandPoint then
   begin
   //Выводим пазл вниз
   if ptab[1]<>i then
    begin
     for j:= k downto 2 do
     ptab[j]:=ptab[j-1];
     ptab[1]:=i;
    end;
   end else //Прячем пазл далеко влево
   begin
    if pazl[i,3]=0 then pazl[i,1]:=pazl[i,1]-100000;
   end;
   //Рисуем топ пазлов и завершаем процедуру
   scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
   for k:=1 to ost do
   begin
   i:=ptab[k];
   if pazl[i,2]<>0 then scr.canvas.Draw(pazl[i,0],pazl[i,1],im[s(i).x,s(i).y]);
   end;
   PuzzleForm.canvas.Draw(0,0,scr);exit;
   end;
  //Если жмем левую клавишу - то пазл уходит в топ
  if button=mbleft  then
  begin
  step:=4;
  //Выводим пазл в топ
  if ptab[ost]<>i then
   begin
    for j:= k to ost-1 do
    ptab[j]:=ptab[j+1];
    ptab[ost]:=i;
   end;
  //Рисуем топ пазлов кроме выбранного под номером pnum
  pnum:=i;
  scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
  for k:=1 to ost do
   begin
   i:=ptab[k];
   if (i<>pnum) and (pazl[i,2]<>0) then
   scr.canvas.Draw(pazl[i,0],pazl[i,1],im[s(i).x,s(i).y]);
   end;
  PuzzleForm.canvas.Draw(0,0,scr);
  //Отдельно рисуем пазл под номером pnum
  PuzzleForm.canvas.Draw(pazl[pnum,0],pazl[pnum,1],im[s(pnum).x,s(pnum).y]);
  px:=x-pazl[pnum,0]; py:=y-pazl[pnum,1];
  end;
end;

//Отпускаем мышку
procedure TOPMForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
 begin
  if step=4 then
 begin
 step:=3;
 scr.canvas.Draw(pazl[pnum,0],pazl[pnum,1],im[s(pnum).x,s(pnum).y]);
 end;
end;

//Перемещение пазлов по форме
procedure TOPMForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
i,j,k,tek:integer;r,r1:trect;
begin
  If (ssLeft in Shift) = false then
  begin
  if step>2 then
   begin
   mpanel.Height:=85;
   mpanel.Visible:=false;
   end;
  exit;
  end;
  //Если был Attach
  if step=5 then
  begin
  px:=px+ix;
  py:=py+iy;
  step:=4;
  end;
  if step<>4 then exit;
  GetRgnBox(reg[s(pnum).x,s(pnum).y],r);
  //Чтобы пазлы не выходили за рамки окна
  i:=round(r.width*strtoint(edit8.Text)/100);
  j:=round(r.height*strtoint(edit8.Text)/100);
  if x-px+i<0 then x:=px-i;
  if y-py+j<=0 then y:=py-j;
  if x-px+r.width-i>clientwidth then x:=clientwidth-r.width+px+i;
  if y-py+r.height-j>clientheight then y:=clientheight-r.height+py+j;
  //Двигаем пазл с перерисовкой
  begin
  pazl[pnum,0]:=x-px;pazl[pnum,1]:=y-py;
  sscr.Canvas.FillRect(rect(0,0,sscr.Width,sscr.Height));
  sscr.canvas.Draw(0,0,scr);
  sscr.canvas.Draw(pazl[pnum,0],pazl[pnum,1],im[s(pnum).x,s(pnum).y]);
  PuzzleForm.canvas.Draw(0,0,sscr);
  end;
  //Ищем совместимые детали пазла по набору теков в группе
  k:=2;
  while pazl[pnum,k]<>0 do
  begin
    tek:=pazl[pnum,k];
    //Проверяем возможных соседей справа
    if tek mod kolx <> 0 then
     begin
      i:=inarray(tek+1);
      if i<>pnum then
      begin
       GetRgnBox(reg[s(i).x,s(i).y],r1);
       if (abs(pazl[pnum,0]-r.Left-pazl[i,0]+r1.Left)<=att)
       and (ABS(pazl[pnum,1]-r.Top-pazl[i,1]+r1.Top)<=att) then
       begin
       attach(pnum,i);
       break;
       end;
      end;
     end;
    //Проверяем возможных соседей слева
    if tek mod kolx <> 1 then
     begin
      i:=inarray(tek-1);
      if i<>pnum then
      begin
       GetRgnBox(reg[s(i).x,s(i).y],r1);
       if (abs(pazl[pnum,0]-r.Left-pazl[i,0]+r1.Left)<=att)
       and (ABS(pazl[pnum,1]-r.Top-pazl[i,1]+r1.Top)<=att) then
       begin
       attach(pnum,i);
       break;
       end;
       end;
     end;
     //Проверяем возможных соседей сверху
     if tek>kolx then
     begin
      i:=inarray(tek-kolx);
      if i<>pnum then
      begin
       GetRgnBox(reg[s(i).x,s(i).y],r1);
       if (abs(pazl[pnum,0]-r.Left-pazl[i,0]+r1.Left)<=att)
       and (ABS(pazl[pnum,1]-r.Top-pazl[i,1]+r1.Top)<=att) then
       begin
       attach(pnum,i);
       break;
       end;
       end;
     end;
     //Проверяем возможных соседей снизу
     if tek<=kolx*koly-kolx then
     begin
      i:=inarray(tek+kolx);
      if i<>pnum then
      begin
       GetRgnBox(reg[s(i).x,s(i).y],r1);
       if (abs(pazl[pnum,0]-r.Left-pazl[i,0]+r1.Left)<=att)
       and (ABS(pazl[pnum,1]-r.Top-pazl[i,1]+r1.Top)<=att) then
       begin
       attach(pnum,i);
       break;
       end;
       end;
     end;
    inc(k);
   end;
 end;

//Основной модуль присоединения пазлов друг к другу
procedure tOPMForm.attach(x,y:integer);
var
 i,j,i1,j1:integer;
 b:tbitmap;r:trect;
begin
 //Стыкуем точно
 pazl[y,0]:=pazl[x,0]-round(ind[s(x).x-1,s(x).y-1].x)+round(ind[s(y).x-1,s(y).y-1].x);
 pazl[y,1]:=pazl[x,1]-round(ind[s(x).x-1,s(x).y-1].y)+round(ind[s(y).x-1,s(y).y-1].y);
 //Щелчок
 if checkbox6.Checked then sndPlaySound(PChar(pD1), snd_ASync or snd_Memory);
 //Объединяем группы
 i1:=pazl[x,2];
 j1:=pazl[y,2];
 GetRgnBox(reg[s(i1).X,s(i1).y],r);
 ix:=r.Left;
 iy:=r.Top;
 i:=3;
 while pazl[x,i]<>0 do inc(i);
 j:=2;
 while pazl[y,j]<>0 do
  begin
  pazl[x,i]:=pazl[y,j];
  pazl[y,j]:=0;
  inc(i);inc(j);
  end;
  //Делаем новую картинку пазла
  b:=tbitmap.Create;
  b.Width:=tekx;b.Height:=teky;
  b.Canvas.Brush.Color:=clwhite;
  b.PixelFormat:=pf24bit;
  b.TransparentColor := clWhite;
  b.Transparent:=true;
  b.Canvas.FillRect(rect(0,0,tekx,teky));
  b.Canvas.Brush.Bitmap:=original1.Picture.Bitmap;
  CombineRgn(reg[s(i1).X,s(i1).y],reg[s(i1).X,s(i1).y],reg[s(j1).X,s(j1).y],RGN_OR);
  PaintRgn (b.Canvas.Handle,reg[s(i1).x,s(i1).y]);
  GetRgnBox(reg[s(i1).x,s(i1).y],r);
  im[s(x).X,s(x).Y].Width:=r.Width;
  im[s(x).X,s(x).Y].height:=r.height;
  im[s(x).X,s(x).Y].canvas.FillRect(rect(0,0,r.Width,r.height));
  im[s(x).X,s(x).Y].canvas.Draw(-r.Left,-r.Top,b);
  if r.Left<ix then ix:=ix-r.Left else ix:=0;
  if r.Top<iy then iy:=iy-r.Top else iy:=0;
  //Убираем ненужное и рисуем новое
  //Чистим топ пазлов ptab
  for i := 1 to ost do
   if ptab [i]=y then break;
     for j := i to ost-1 do
     ptab[j]:=ptab[j+1];
     ost:=ost-1;
  im[s(y).X,s(y).Y].Free;
  b.Free;
  step:=5;
  scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
  for i1:=1 to ost do
  begin
   i:=ptab[i1];
   if (i<>y) and(i<>x) and (pazl[i,2]<>0) then
   scr.canvas.Draw(pazl[i,0],pazl[i,1],im[S(I).X,S(I).Y]);
  end;
  //Завершение игры, если пазл собран полностью
  if pazl[x,kolx*koly+1]<>0 then
  begin
   if checkbox6.Checked then SndPlaySound(PChar(pD2), snd_ASync or snd_Memory);
   caption:=inttostr(ptab[1])+'   '+inttostr(pazl[ptab[1],2]);
  end;
end;

//Процедуры отрисовки окна и элементов  *****************************************************************************************

procedure TOPMForm.FormResize(Sender: TObject);
var
 i,k:integer;
 r:real;
 LastLeft, LastTop: Integer;
begin
 //Ставим панель по центру
 MPanel.Top := 0;
 MPanel.Left := (ClientWidth - MPanel.Width) div 2;

 case step of
 0:exit;
 1,2:
  begin
   original.Left:=round(clientwidth/2-original.Width/2);
   original.top:=round(clientheight/2-original.height/2);
   original1.Top:=original.Top;
   original1.Left:=original.Left;
  end;
  3:
  begin
   scr.Width:=clientwidth;
   scr.Height:=clientheight;
   sscr.Width:=clientwidth;
   sscr.Height:=clientheight;
  for k:=1 to ost do
   begin
   i:=ptab[k];
   if pazl[i,2]<>0 then scr.canvas.Draw(pazl[i,0],pazl[i,1],im[s(i).x,s(i).y]);
   end;
  //PuzzleForm.canvas.Draw(0,0,scr);
  end;
 end;
 Repaint;
end;

procedure TOPMForm.FormPaint(Sender: TObject);
begin
//Рисуем изображение стола
if PosEx('opm_res_table_', FConfig.ReadString('Puzzle','Background','opm_res_table_0')) = 0 then
PaintImageFromFile(OPMForm, FConfig.ReadString('Puzzle','Background','opm_res_table_0'))
else
PaintImageFromRes(OPMForm, FConfig.ReadString('Puzzle','Background','opm_res_table_0'));

if step=3 then PuzzleForm.canvas.Draw(0,0,scr) else
//Делаем текст видимым только в начале
if step=0 then GetAuthorsText(OPMForm, LanguageButton.Hint);
end;

procedure tOPMForm.ostpaint;
var i,j:integer;
begin
scr.Canvas.FillRect(rect(0,0,scr.width,scr.Height));
 for j:=1 to ost do
   begin
   i:=ptab[j];
   if pazl[i,2]<>0 then scr.canvas.Draw(pazl[i,0],pazl[i,1],im[s(i).x,s(i).y]);
   end;
PuzzleForm.canvas.Draw(0,0,scr);
end;

//Вспомогательные функции *******************************************************************************************************

//Функция вертикальных траекторий
 function tOPMForm.vertical(x1,x2,x3,x4:real):tgpgraphicspath;
   var
    Points: array [0..10] of TGPPointF;
    k,n,k1,k2:real;
    dex,dey,dx,dy:real;
   begin
    ptek:=0;
    result:=tgpgraphicspath.Create();
    if (x1=0) or (x1=tekx) then
    result.AddLine(x1,x2,x3,x4) else
    begin
    //Строим первые две опорных точки по угловым точкам
    points[0].X:=x1; points[0].y:=x2;
    points[10].X:=x3; points[10].y:=x4;
    if points[0].X<>points[10].x then
     begin
       k:= (points[0].y-points[10].y)/(points[0].X-points[10].x); //Угловой коэффициент прямой
       n:=-1/k; //Угловой коэффициент нормали
     end else
     begin
       k:=0;n:=0;
     end;
       dex:=points[10].X-points[0].X;//Истинная середина прямой, тогда как dexx - минимальная абсолютная, без учета искажений
       dey:=points[10].y-points[0].y;
    //Строим две опорных точки перед шейкой, они плавающие и не зависят от абсолютной dexx
    k1:=(1-2*round(random));
    dx:=k1*dey*strtoint(edit6.Text)/100;
    dy:=dx*n;
    points[1].X:=points[0].X+dex*0.2+dx;
    points[1].y:=points[0].y+dey*0.2+dy;
    points[9].X:=points[0].X+dex*0.8+dx;
    points[9].y:=points[0].y+dey*0.8+dy;
    //Строим опорные точки шейки
    dy:=dexx*0.08;
    points[2].y:=points[0].y+dey*0.5-dy;
    points[8].y:=points[0].y+dey*0.5+dy;
    if k<>0 then dx:=-dy/k else dx:=0;
    points[2].X:=points[0].X+dex*0.5+dx;
    if k<>0 then dx:=dy/k else dx:=0;
    points[8].X:=points[0].X+dex*0.5+dx;
    //Строим удаленную точку головки
    if checkbox1.Checked then k1:=-k1 else k1:=(1-2*round(random));
    dx:=k1*dexx/3.6;
    dy:=dx*n;
    points[5].X:=points[0].X+dex*0.5+dx;
    points[5].y:=points[0].y+dey*0.5+dy;
    //Строим четыре опорных точки головки
    k2:=dexx*0.12;
    dx:=k1*dexx/4.5;
    dy:=dx*n-k2;
    if k<>0 then dx:=dx+dy/k;
    points[4].X:=points[0].X+dex*0.5+dx;
    points[4].y:=points[0].y+dey*0.5+dy;
    dx:=k1*dexx/4.5;
    dy:=dx*n+k2;
    if k<>0 then dx:=dx+dy/k;
    points[6].X:=points[0].X+dex*0.5+dx;
    points[6].y:=points[0].y+dey*0.5+dy;
    k2:=dexx*0.14;
    dx:=k1*dexx/10;
    dy:=dx*n-k2;
    if k<>0 then dx:=dx+dy/k;
    points[3].X:=points[0].X+dex*0.5+dx;
    points[3].y:=points[0].y+dey*0.5+dy;
    dx:=k1*dexx/10;
    dy:=dx*n+k2;
    if k<>0 then dx:=dx+dy/k;
    points[7].X:=points[0].X+dex*0.5+dx;
    points[7].y:=points[0].y+dey*0.5+dy;
    result.AddCurve(PGPPointF(@Points),11,strtofloat(e9.Text)/100);
    ptek:=round(k1);
    end;
   end;

   //Функция горизонтальных траекторий
   function tOPMForm.gorizontal(x1,x2,x3,x4:real):tgpgraphicspath;
   var
    Points: array [0..10] of TGPPointF;
    k,n,k1,k2:real;
    dex,dey,dx,dy:real;
   begin
    ptek:=0;
    result:=tgpgraphicspath.Create();
    if (x2=0) or (x2=teky) then
    result.AddLine(x1,x2,x3,x4) else
    begin
    //Строим первые две опорных точки по угловым точкам
    points[0].X:=x1; points[0].y:=x2;
    points[10].X:=x3; points[10].y:=x4;
    if points[0].y<>points[10].y then
     begin
       k:= (points[0].x-points[10].x)/(points[0].y-points[10].y); //Угловой коэффициент прямой
       n:=-1/k; //Угловой коэффициент нормали
     end else
     begin
       k:=0;n:=0;
     end;
       dex:=points[10].X-points[0].X;//Истинная середина прямой, тогда как dexx - минимальная абсолютная, без учета искажений
       dey:=points[10].y-points[0].y;
    //Строим две опорных точки перед шейкой, они плавающие и не зависят от абсолютной dexx
    k1:=(1-2*round(random));
    dy:=k1*dex*strtoint(edit6.Text)/100;
    dx:=dy*n;
    points[1].X:=points[0].X+dex*0.2+dx;
    points[1].y:=points[0].y+dey*0.2+dy;
    points[9].X:=points[0].X+dex*0.8+dx;
    points[9].y:=points[0].y+dey*0.8+dy;
    //Строим опорные точки шейки
    dx:=dexx*0.08;
    points[2].x:=points[0].x+dex*0.5-dx;
    points[8].x:=points[0].x+dex*0.5+dx;
    if k<>0 then dy:=-dx/k else dy:=0;
    points[2].y:=points[0].y+dey*0.5+dy;
    if k<>0 then dy:=dx/k else dy:=0;
    points[8].y:=points[0].y+dey*0.5+dy;
    //Строим удаленную точку головки
    if checkbox1.Checked then k1:=-k1 else k1:=(1-2*round(random));
    dy:=k1*dexx/3.6;
    dx:=dy*n;
    points[5].y:=points[0].y+dey*0.5+dy;
    points[5].x:=points[0].x+dex*0.5+dx;
    //Строим четыре опорных точки головки
    k2:=dexx*0.12;
    dy:=k1*dexx/4.5;
    dx:=dy*n-k2;
    if k<>0 then dy:=dy+dx/k;
    points[4].y:=points[0].y+dey*0.5+dy;
    points[4].x:=points[0].x+dex*0.5+dx;
    dy:=k1*dexx/4.5;
    dx:=dy*n+k2;
    if k<>0 then dy:=dy+dx/k;
    points[6].y:=points[0].y+dey*0.5+dy;
    points[6].x:=points[0].x+dex*0.5+dx;
    k2:=dexx*0.14;
    dy:=k1*dexx/10;
    dx:=dy*n-k2;
    if k<>0 then dy:=dy+dx/k;
    points[3].y:=points[0].y+dey*0.5+dy;
    points[3].x:=points[0].x+dex*0.5+dx;
    dy:=k1*dexx/10;
    dx:=dy*n+k2;
    if k<>0 then dy:=dy+dx/k;
    points[7].y:=points[0].y+dey*0.5+dy;
    points[7].x:=points[0].x+dex*0.5+dx;
    result.AddCurve(PGPPointF(@Points),11,strtofloat(e9.Text)/100);
    ptek:=round(k1);
    end;
   end;

 //Функция вертикальных траекторий для своего варианта пазла
 function tOPMForm.vertical1(x1,x2,x3,x4:real):tgpgraphicspath;
   var
    Points: array [0..10] of TGPPointF;
    dey,dex:real;
    k1,i:integer;
   begin
    ptek:=0;
    result:=tgpgraphicspath.Create();
    if (x1=0) or (x1=tekx) then
    result.AddLine(x1,x2,x3,x4) else
    begin
    points[0].X:=x1; points[0].y:=x2;
    points[10].X:=x3; points[10].y:=x4;
    dey:=points[10].y-points[0].y;
    dex:=points[10].X-points[0].X;
    k1:=(1-2*round(random));
    for i := 1 to 9 do
     begin
     points[i].X:=points[0].X+k1*dexx*(Timage(FindComponent('Image'+IntToStr(i+1))).Left-96)/170+dex*(Timage(FindComponent('Image'+IntToStr(i+1))).top-5)/170;
     points[i].y:=points[0].y+dey*(Timage(FindComponent('Image'+IntToStr(i+1))).top-5)/170;
     end;
    result.AddCurve(PGPPointF(@Points),11,strtofloat(e9.Text)/100);
    ptek:=round(k1);
    end;
   end;

   //Функция горизонтальных траекторий для своего варианта пазла
   function tOPMForm.gorizontal1(x1,x2,x3,x4:real):tgpgraphicspath;
   var
    Points: array [0..10] of TGPPointF;
    dex,dey:real;
    k1,i:integer;
   begin
    ptek:=0;
    result:=tgpgraphicspath.Create();
    if (x2=0) or (x2=teky) then
    result.AddLine(x1,x2,x3,x4) else
    begin
    points[0].X:=x1; points[0].y:=x2;
    points[10].X:=x3; points[10].y:=x4;
    dex:=points[10].X-points[0].X;
    dey:=points[10].y-points[0].y;
    k1:=(1-2*round(random));
    for i := 1 to 9 do
    begin
    points[i].y:=points[0].y+k1*dexx*(Timage(FindComponent('Image'+IntToStr(i+1))).left-96)/170+dey*(Timage(FindComponent('Image'+IntToStr(i+1))).top-5)/170;
    points[i].x:=points[0].x+dex*(Timage(FindComponent('Image'+IntToStr(i+1))).top-5)/170;
    end;
    result.AddCurve(PGPPointF(@Points),11,strtofloat(e9.Text)/100);
    ptek:=round(k1);
   end;
  end;

   //Функция осветления границы паззла для объемной рамки
   function tOPMForm.lighter(x:tRGBTRIPLE;y:Real):tRGBTRIPLE;
   var i:real;
   begin
    i:=x.rgbtBlue;
    i:=round(i+(255-i)*y/100);
    if i>254 then result.rgbtBlue:=254 else result.rgbtBlue:=round(i);
    i:=x.rgbtGreen;
    i:=round(i+(255-i)*y/100);
    if i>254 then result.rgbtGreen:=254 else result.rgbtGreen:=round(i);
    i:=x.rgbtRed;
    i:=round(i+(255-i)*y/100);
    if i>254 then result.rgbtRed:=254 else result.rgbtRed:=round(i);
   end;

   //Функция затемнения границы паззла для объемной рамки
   function tOPMForm.darker(x:tRGBTRIPLE;y:Real):tRGBTRIPLE;
   var i:real;
   begin
    i:=x.rgbtBlue;
    i:=round(i-i*y/100);
    if i<0 then result.rgbtBlue:=2 else result.rgbtBlue:=round(i);
    i:=x.rgbtGreen;
    i:=round(i-i*y/100);
    if i<0 then result.rgbtGreen:=2 else result.rgbtGreen:=round(i);
    i:=x.rgbtRed;
    i:=round(i-i*y/100);
    if i<0 then result.rgbtRed:=2 else result.rgbtRed:=round(i);
   end;

procedure tOPMForm.dark(i,j:integer);
   begin
    pop1[i]:=darker(pop1[i],strtofloat(e1.Text));
    if (i<tekx-1) and (j>0) and (strtoint(edit1.Text)>1) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j-1];
    pop2[i+1]:=darker(pop2[i+1],strtofloat(e2.Text));
    end;
    if (i<tekx-2) and (j>1) and (strtoint(edit1.Text)>2) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j-2];
    pop2[i+2]:=darker(pop2[i+2],strtofloat(e3.Text));
    end;
    if (i<tekx-3) and (j>2) and (strtoint(edit1.Text)>3) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j-3];
    pop2[i+3]:=darker(pop2[i+3],strtofloat(e4.Text));
    end;
    if (i<tekx-4) and (j>3) and (strtoint(edit1.Text)>4) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j-4];
    pop2[i+4]:=darker(pop2[i+4],strtofloat(e10.Text));
    end;
   end;

   procedure tOPMForm.light(i,j:integer);
   begin
   pop1[i]:=darker(pop1[i],strtofloat(e5.Text));
   if (i>0) and (j<teky-1) and (strtoint(edit1.Text)>1) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j+1];
    pop2[i-1]:=lighter(pop2[i-1],strtofloat(e6.Text));
    end;
    if (i>1) and (j<teky-2) and (strtoint(edit1.Text)>2) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j+2];
    pop2[i-2]:=lighter(pop2[i-2],strtofloat(e7.Text));
    end;
    if (i>2) and (j<teky-3) and (strtoint(edit1.Text)>3) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j+3];
    pop2[i-3]:=lighter(pop2[i-3],strtofloat(e8.Text));
    end;
    if (i>3) and (j<teky-4) and (strtoint(edit1.Text)>4) then
    begin
    pop2:= original1.picture.Bitmap.ScanLine[j+4];
    pop2[i-4]:=lighter(pop2[i-4],strtofloat(e11.Text));
    end;
   end;

 //Перевод координат
 function tOPMForm.s(x:integer):tpoint;
 var i:integer;
 begin
 i:=ceil(x/kolx);
 s.Y:=i;
 s.x:=x-(i-1)*kolx;
 end;

//Поиск пазла на наличие конкретного тека
 function tOPMForm.inarray(x:integer):integer;
 var i,j:integer;
 begin
  for i := 1 to ost do
    begin
    j:=2;
     while pazl[ptab[i],j]<>0 do
      begin
       if pazl[ptab[i],j]=x then
        begin
         inarray:=ptab[i]; exit;
        end;
      inc(j);
     end;
    end;
 end;

//Отбираем элементы рамки
procedure TOPMForm.ib5Click(Sender: TObject);
var i,j:integer;
begin
if ib5.ImageIndex=12 then
 begin
 normindex;
 ib5.ImageIndex:=13;
 for I := 1 to kolx*koly do
   if (s(i).X<>1) and (s(i).X<>kolx) and (s(i).y<>1) and (s(i).y<>koly) then
    if pazl[i,3]=0 then pazl[i,1]:=pazl[i,1]-100000;
 end else
 begin
 normindex;
 for I := 1 to ost do
  if (pazl[ptab[i],1]<-10000) and (pazl[ptab[i],3]=0) then pazl[ptab[i],1]:=pazl[ptab[i],1]+100000;
 end;
 ostpaint;
end;

//Перемещение одиночных пазлов в нужную сторону
//Вправо
procedure TOPMForm.ib6Click(Sender: TObject);
var i:integer;
begin
 normindex;
 for I := 1 to kolx*koly do
  if (pazl[i,2]<>0) and (pazl[i,3]=0) then
    begin
    pazl[i,0]:=RandomRange(clientwidth-round(clientwidth/3),clientwidth-im[s(i).x,s(i).y].Width);
    pazl[i,1]:=randomrange(0,clientheight-im[s(i).x,s(i).y].Height);
    end;
ostpaint;
ib5.ImageIndex:=12;
end;
//Влево
procedure TOPMForm.ib7Click(Sender: TObject);
var i:integer;
begin
 normindex;
 for I := 1 to kolx*koly do
  if (pazl[i,2]<>0) and (pazl[i,3]=0) then
    begin
    pazl[i,0]:=RandomRange(0,round(clientwidth/3)-im[s(i).x,s(i).y].Width);
    pazl[i,1]:=randomrange(0,clientheight-im[s(i).x,s(i).y].Height);
    end;
ostpaint;
ib5.ImageIndex:=12;
end;
//Вверх
procedure TOPMForm.ib8Click(Sender: TObject);
var i:integer;
begin
 normindex;
 for I := 1 to kolx*koly do
  if (pazl[i,2]<>0) and (pazl[i,3]=0) then
    begin
    pazl[i,0]:=RandomRange(0,clientwidth-im[s(i).x,s(i).y].Width);
    pazl[i,1]:=randomrange(0,round(clientheight/3)-im[s(i).x,s(i).y].Height);
    end;
ostpaint;
ib5.ImageIndex:=12;
end;
//Вниз
procedure TOPMForm.ib9Click(Sender: TObject);
var i:integer;
begin
 normindex;
 for I := 1 to kolx*koly do
  if (pazl[i,2]<>0) and (pazl[i,3]=0) then
    begin
    pazl[i,0]:=RandomRange(0,clientwidth-im[s(i).x,s(i).y].Width);
    pazl[i,1]:=RandomRange(clientheight-round(clientheight/3),clientheight-im[s(i).x,s(i).y].height);
    end;
ostpaint;
ib5.ImageIndex:=12;
end;

//Фильтрация одиночных пазлов по типу
procedure TOPMForm.ib10Click(Sender: TObject);
var t,i:integer;
begin
t:=(sender as tspeedbutton).tag;
if (sender as tspeedbutton).imageindex=9+t*3 then
  begin
  normindex;
  (sender as tspeedbutton).ImageIndex:=10+t*3;
  for I := 1 to ost do
      if (pazl[ptab[i],2]<>0) and (pazl[ptab[i],3]=0) then
       if (vatek[s(ptab[i]).X-1,s(ptab[i]).Y-1]<>filtr[t,1]) or (vatek[s(ptab[i]).X,s(ptab[i]).Y-1]<>filtr[t,2])
        or (gatek[s(ptab[i]).X-1,s(ptab[i]).Y-1]<>filtr[t,3]) or (gatek[s(ptab[i]).X-1,s(ptab[i]).Y]<>filtr[t,4]) then
          pazl[ptab[i],1]:=pazl[ptab[i],1]-100000;
    end else normindex;
ostpaint;
end;

//Возвращение пазлов на место после фильтрации
procedure tOPMForm.normindex;
var i:integer;
begin
for I := 1 to ost do
if (pazl[ptab[i],1]<-10000) then pazl[ptab[i],1]:=pazl[ptab[i],1]+100000;
for I := 10 to 25 do
Tspeedbutton(FindComponent('ib'+IntToStr(i))).imageindex:=(i*3)-18;
ib5.ImageIndex:=12;
end;

//Перемещение точек рисующих линию своего пазла
procedure TOPMForm.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sx:=x;
sy:=y;
sz:=1;
end;

procedure TOPMForm.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if sz=0 then exit;
if ((sender as timage).Left+x-sx>24) and ((sender as timage).Left+x-sx<167) then
(sender as timage).Left:=(sender as timage).Left+x-sx;
if ((sender as timage).Top+y-sy>18) and ((sender as timage).Top+y-sy<161) then
(sender as timage).Top:=(sender as timage).Top+y-sy;
image111.Canvas.Brush.Color:=rgb(255,255,255);
image111.Canvas.FillRect(rect(0,0,image111.Width,image111.Height));
points1[(sender as timage).Tag].X:=(sender as timage).Left-11;
points1[(sender as timage).Tag].Y:=(sender as timage).Top-5;
igpg.DrawCurve(p,PGPPointF(@Points1),11,strtofloat(e9.Text)/100);
end;

procedure TOPMForm.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sz:=0;
end;

//Сохранение игры
procedure TOPMForm.SaveGame;
var
len,i,j:integer;
n:string;
size:cardinal;
data: pointer;
begin
  n:=ChangeFileExt(ExtractFileName(sFileName),'');
  AssignFile(F, GetSaveFolder+n+'.pzl');
  Rewrite(F,1);
  ist:= TBytesStream.Create;
  //Сохраняем переменные
  for i := 0 to 7 do
  BlockWrite(F, per[i]^, SizeOf(per[i]^));
  //Сохраняем ptab, pazl, im
  for i := 1 to ost do
  begin
  BlockWrite(F, ptab[i], SizeOf(ptab[i]));
  for j := 0 to kolx*koly+1 do
  BlockWrite(F, pazl[ptab[i],j], SizeOf(pazl[ptab[i],j]));
  im[s(ptab[i]).X,s(ptab[i]).Y].SaveToStream(ist);
  len:=Length(ist.Bytes);
  BlockWrite(F, Len, SizeOf(Len));
  BlockWrite(F, ist.Bytes[0], Len);
  ist.Clear;
  end;
  //сохраняем регионы
  for i := 1 to kolx do
  for j := 1 to koly do
  begin
  size := GetRegionData (reg[i,j], SizeOf (RGNDATA), nil);
  data := GlobalAllocPtr(GPTR, size);
  GetRegionData(reg[i,j], size, data);
  ist.Write(data^,size);
  GlobalFreePtr(data);
  BlockWrite(F, size, SizeOf(size));
  BlockWrite(F, ist.Bytes[0], size);
  ist.Clear;
  end;
  //Сохраняем подсказку
  original1.Picture.Bitmap.SaveToStream(ist);
  len:=Length(ist.Bytes);
  BlockWrite(F, Len, SizeOf(Len));
  BlockWrite(F, ist.Bytes[0], Len);
  //Сохраняем массивы ind, gatek, vatek
  for j:= 0 to koly do
  for i:= 0 to kolx do
  begin
  BlockWrite(F, ind[i,j].x, SizeOf(ind[i,j].x));
  BlockWrite(F, ind[i,j].y, SizeOf(ind[i,j].y));
  BlockWrite(F, gatek[i,j], SizeOf(gatek[i,j]));
  BlockWrite(F, vatek[i,j], SizeOf(vatek[i,j]));
  end;
  ist.Free;
  CloseFile(F);
end;

//Загрузка игры
procedure tOPMForm.LoadGame(sFileName: String);
var
len,i,j:integer;
n:string;
size:cardinal;
data: PRgnData;
begin
 AssignFile(F, sFileName);
 reset (f,1);
 ist:= TBytesStream.Create;
 //Загружаем переменные
 for i := 0 to 7 do
 BlockRead(F, per[i]^, SizeOf(per[i]^));
 setlength(im,kolx+1,koly+1);
 setlength(ptab,kolx*koly+1);
 setlength(pazl,kolx*koly+1,kolx*koly+3);
 //Загружаем ptab, pazl, im
 for i := 1 to ost do
 begin
 Blockread(F, ptab[i], SizeOf(ptab[i]));
 for j := 0 to kolx*koly+1 do
 Blockread(F, pazl[ptab[i],j], SizeOf(pazl[ptab[i],j]));
 Blockread(F, Len, SizeOf(Len));
 ist.SetSize(len);
 Blockread(F,ist.Bytes[0],Len);
 im[s(ptab[i]).X,s(ptab[i]).Y]:=tbitmap.Create;
 im[s(ptab[i]).X,s(ptab[i]).Y].PixelFormat:=pf24bit;
 im[s(ptab[i]).X,s(ptab[i]).Y].TransparentColor:= clWhite;
 im[s(ptab[i]).X,s(ptab[i]).Y].Transparent:=true;
 im[s(ptab[i]).X,s(ptab[i]).Y].LoadFromStream(ist);
 ist.Clear;
 end;
 //Загружаем регионы
 setlength(reg,kolx+1,koly+1);
 for i := 1 to kolx do
 for j := 1 to koly do
 begin
 deleteobject(reg[i,j]);
 Blockread(F, size, SizeOf(size));
 ist.SetSize(size);
 Blockread(F,ist.Bytes[0],size);
 data:= GlobalAllocPtr(GPTR,ist.size);
 ist.Read(data^, ist.Size);
 reg[i,j]:=ExtCreateRegion(nil, ist.Size, data^);
 GlobalFreePtr(data);
 ist.Clear;
 end;
 //Загружаем подсказку
 Blockread(F, Len, SizeOf(Len));
 ist.SetSize(len);
 Blockread(F,ist.Bytes[0],Len);
 original1.Visible:=false;
 original1.Picture.Bitmap.LoadFromStream(ist);
 original1.Align:=alclient;
 original1.Center:=true;
 original1.Proportional:=true;
 //Загружаем массивы ind, gatek, vatek
 SetLength (ind,kolx+1,koly+1);
 setlength(gatek,kolx+1,koly+1);
 setlength(vatek,kolx+1,koly+1);
 for j:= 0 to koly do
 for i:= 0 to kolx do
 begin
 Blockread(F, ind[i,j].x, SizeOf(ind[i,j].x));
 Blockread(F, ind[i,j].y, SizeOf(ind[i,j].y));
 Blockread(F, gatek[i,j], SizeOf(gatek[i,j]));
 Blockread(F, vatek[i,j], SizeOf(vatek[i,j]));
 end;
 ist.Free;
 CloseFile(F);
 OPMForm.Resize;
 ib2.Enabled:=false;
 ib3.Enabled:=false;
 ib5.Enabled:=true;
 benable;
end;

//открытия изображения из файла
procedure TOPMForm.N1Click(Sender: TObject);
begin
if opd.Execute and FileExists(OpD.FileName) then
 begin
 if ExtractFileExt(opd.FileName)='.pzl' then
 OpenPLZFile(opd.FileName) else FileImageToPuzzle(opd.FileName, 0);
 end;
end;

//Меню открытия изображения из URL адрес
procedure TOPMForm.N2Click(Sender: TObject);
var
 InputString: string;
begin
 InputString:= InputBox(OPMForm.Caption, 'URL: ', '');
 if InputString <> '' then FileImageToPuzzle(InputString, 1);
end;

procedure TOPMForm.Edit3Change(Sender: TObject);
begin
 if Edit3.Focused then AllEditChange(Edit3,UpDown3) else
 if Edit4.Focused then AllEditChange(Edit4,UpDown4) else
 if Edit7.Focused then AllEditChange(Edit7,UpDown7) else
 if Edit8.Focused then AllEditChange(Edit8,UpDown8) else
 if Edit5.Focused then AllEditChange(Edit5,UpDown5) else
 if Edit6.Focused then AllEditChange(Edit6,UpDown6) else
 if Edit1.Focused then AllEditChange(Edit1,UpDown1) else
 if E1.Focused then AllEditChange(E1,U1) else
 if E2.Focused then AllEditChange(E2,U2) else
 if E3.Focused then AllEditChange(E3,U3) else
 if E4.Focused then AllEditChange(E4,U4) else
 if E5.Focused then AllEditChange(E5,U5) else
 if E6.Focused then AllEditChange(E6,U6) else
 if E7.Focused then AllEditChange(E7,U7) else
 if E8.Focused then AllEditChange(E8,U8) else
 if E9.Focused then AllEditChange(E9,UpDown2) else
 if E10.Focused then AllEditChange(E10,U10) else
 if E11.Focused then AllEditChange(E11,U11);
end;

//Восстанавливаем настройки по умолчанию
procedure TOPMForm.ResetButtonClick(Sender: TObject);
begin
  UpDown3.Position := 20;
  UpDown4.Position := 15;
  UpDown7.Position := 5;
  UpDown8.Position := 90;
  UpDown5.Position := 5;
  UpDown6.Position := 2;
  UpDown1.Position := 3;
  U1.Position := 50;
  U2.Position := 30;
  U3.Position := 15;
  U4.Position := 10;
  U5.Position := 60;
  U6.Position := 55;
  U7.Position := 45;
  U8.Position := 30;
  UpDown2.Position := 50;
  U10.Position := 5;
  U11.Position := 15;
  CheckBox1.Checked := True;
  CheckBox7.Checked := True;
  CheckBox5.Checked := True;
  CheckBox6.Checked := True;
  CheckBox3.Checked := True;
  CheckBox2.Checked := False;
  Image2.SetBounds(92,40,7,7);
  Image3.SetBounds(92,70,7,7);
  Image4.SetBounds(110,65,7,7);
  Image5.SetBounds(128,70,7,7);
  Image6.SetBounds(136,88,7,7);
  Image7.SetBounds(128,105,7,7);
  Image8.SetBounds(110,115,7,7);
  Image9.SetBounds(92,110,7,7);
  Image10.SetBounds(92,140,7,7);

  //Рисуем свой вариант пазла
  image111.Canvas.Brush.Color:=rgb(255,255,255);
  image111.Canvas.FillRect(rect(0,0,image111.Width,image111.Height));
  DrawCustomPuzzle;
end;

//открываем форма с фонами
procedure TOPMForm.BKGRButtonClick(Sender: TObject);
begin
with BackgroundsForm do
if (ShowModal <> mrCancel) then
 begin
  if ListView.ItemIndex <> -1 then
  Background := ListView.Items[ListView.ItemIndex].SubItems.Text;
 end;
end;

//изменения значка языка
procedure TOPMForm.English1Click(Sender: TObject);
begin
Translate(StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll]));
LanguageButton.ImageIndex := TMenuItem(Sender).ImageIndex;
end;

//изменения языка
procedure TOPMForm.LanguageButtonClick(Sender: TObject);
begin
 LangMenu.Items.Find(LanguageButton.Hint).Default := True;
 LangMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

//Полноэкранный режим
procedure TOPMForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{$J+}
const
  TIMER1 = 1;
  rect: TRect = (Left:0; Top:0; Right:0; Bottom:0);
  ws : TWindowState = wsNormal;
{$J-}
var
 r : TRect;
begin
if Key = VK_F11 then
 begin
 if BorderStyle <> bsNone then
  begin
    if WindowState = wsNormal then
    begin
     FConfig.WriteInteger('Window','Top',Top);
     FConfig.WriteInteger('Window','Left',Left);
     FConfig.WriteInteger('Window','Width',Width);
     FConfig.WriteInteger('Window','Height',Height);
     FConfig.UpdateFile;
    end;
    SetTimer(Handle,TIMER1,100,@TimerCallBack1);
    ws := WindowState;
    rect := BoundsRect;
    BorderStyle := bsNone;
    r := Screen.MonitorFromWindow(Handle).BoundsRect;
    SetBounds(r.Left, r.Top, r.Right-r.Left, r.Bottom-r.Top);
    PuzzleForm.Align := alNone;
    PuzzleForm.SetBounds(r.Left, r.Top, r.Right-r.Left, r.Bottom-r.Top);
  end
  else
  begin
    KillTimer(Handle,TIMER1);
    BorderStyle := bsSizeable;
    if ws = wsMaximized then
      WindowState := wsMaximized
    else
      SetBounds(rect.Left, rect.Top, rect.Right-rect.Left, rect.Bottom-rect.Top);
    PuzzleForm.Align := alClient;
  end;
 end;
end;

procedure TOPMForm.RecentOnClick(Sender: TObject);
var
 ACaption: String;
begin
 ACaption := StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll]);
 OpenPLZFile(GetSaveFolder+ChangeFileExt(ACaption,'.pzl'));
end;

//открываем папку Save
procedure TOPMForm.OpenSaveFolderClick(Sender: TObject);
begin
ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(GetSaveFolder), nil, SW_NORMAL);
end;

//добавляем список файлов из папки Save
procedure TOPMForm.PopupMenuPopup(Sender: TObject);
var
 i: Integer;
begin
 RecentFilesToMenu(N4, _(GLOBAL_CPTN_BKGRFORM_MENU_OPENDIR,LanguageButton.Hint));
 N4.Items[0].OnClick := OpenSaveFolderClick;
 for I := 2 to N4.Count-1 do N4.Items[I].OnClick := RecentOnClick;
end;

end.
