unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.ExtDlgs, ShellAPI;

type
  TBackgroundsForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    ListView: TListView;
    ImageList: TImageList;
    Label1: TLabel;
    OpenBackgroundDialog: TOpenPictureDialog;
    PopupMenu: TPopupMenu;
    Bevel1: TBevel;
    Button3: TButton;
    Opendir1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Opendir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BackgroundsForm: TBackgroundsForm;

implementation

uses Utils, Unit1, Translation;

{$R *.dfm}

procedure Translate(aLanguageID: String);
begin
with BackgroundsForm do
 begin
  Caption := _(GLOBAL_CPTN_FORM_BKGRFORM,aLanguageID);
  Label1.Caption := _(GLOBAL_CPTN_BKGRFORM_LBL1,aLanguageID);
  Button1.Caption := _(GLOBAL_CPTN_BKGRFORM_BTN1,aLanguageID);
  Button2.Caption := _(GLOBAL_CPTN_BKGRFORM_BTN2,aLanguageID);
  Button3.Caption := _(GLOBAL_CPTN_BKGRFORM_BTN_ADDIMG,aLanguageID);
  Button3.Hint := _(GLOBAL_HINT_BKGRFORM_BTN_ADDIMG,aLanguageID);
  ListView.Groups.Items[0].Header := _(GLOBAL_CPTN_BKGRFORM_LISTVIEW_GROUP0,aLanguageID);
  ListView.Groups.Items[1].Header := _(GLOBAL_CPTN_BKGRFORM_LISTVIEW_GROUP1,aLanguageID);
  OpenDir1.Caption := _(GLOBAL_CPTN_BKGRFORM_MENU_OPENDIR,aLanguageID);
 end;
end;

procedure TBackgroundsForm.FormShow(Sender: TObject);
var
 i: Integer;
begin
 Translate(OPMForm.LanguageButton.Hint);
 ListView.Items.Clear;
 ImageList.Clear;
 //Добавляем список фонов из ресурсов
 for i := 0 to 14 do
 GetListImagesFromRes('opm_res_table_'+IntToStr(i),ListView,ImageList,i);
 //Сканируем папку и добавляем картинки в список
 if DirectoryExists(GetBackgroundsFolder) then
  begin
   FindImageFiles(BackgroundsForm, GetBackgroundsFolder, ImageList,ListView, False);
  end;
 Button1.Enabled := False;
end;

procedure TBackgroundsForm.FormResize(Sender: TObject);
begin
ListView.Arrange(arDefault);
Button1.Left := Width - 180;
Button2.Left := Width - 100;
Bevel1.Left := Width - 205;
Button3.Left := Width - 295;
end;

procedure TBackgroundsForm.ListViewSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
Button1.Enabled := Selected;
end;

procedure TBackgroundsForm.Button3Click(Sender: TObject);
begin
if OpenBackgroundDialog.Execute then
 begin
  if CopyFile(PChar(OpenBackgroundDialog.FileName),PChar(GetBackgroundsFolder+
              ExtractFileName(OpenBackgroundDialog.FileName)),False) then
   begin
    OPMForm.Background := ExtractFileName(OpenBackgroundDialog.FileName);
    ShowMessage(Label1.Caption);
    BackgroundsForm.Close;
   end;
 end;
end;

procedure TBackgroundsForm.Opendir1Click(Sender: TObject);
begin
ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(GetBackgroundsFolder), nil, SW_NORMAL);
BackgroundsForm.Close;
end;

end.
