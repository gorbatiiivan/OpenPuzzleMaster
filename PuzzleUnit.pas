unit PuzzleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TPuzzleForm = class(TForm)
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  PuzzleForm: TPuzzleForm;

implementation

{$R *.dfm}

uses Unit1;

procedure TPuzzleForm.CreateParams( var Params : TCreateParams );
begin
  inherited CreateParams(Params);
  with Params do
   begin
    WndParent := Application.MainForm.Handle;
    Style := WS_CHILD OR WS_CLIPSIBLINGS OR WS_CLIPCHILDREN;
    Color := clWhite;
    TransparentColorValue := clWhite;
    TransparentColor := True;
    DoubleBuffered := True;
    Align := alClient;
   end;
end;

end.
