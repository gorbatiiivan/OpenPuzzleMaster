program OpenPuzzleMaster;



{$R *.dres}

uses
  Winapi.Windows,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {OPMForm},
  Unit2 in 'Unit2.pas' {BackgroundsForm},
  PuzzleUnit in 'PuzzleUnit.pas' {PuzzleForm},
  Utils in 'Utils.pas',
  Translation in 'Translation.pas';

{$R *.res}
{$SETPEFLAGS IMAGE_FILE_RELOCS_STRIPPED}

var
  hwndOtherInstance: THandle;
begin
  //��������� �������� ������ ������ ����������
  CreateMutex(nil, false, PChar('OpenPuzzleMasterMutexToRecallInstance'));
	if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    //���� �������� ���� � ���������� �� �� �������� �����
    hwndOtherInstance:=FindWindow('TOPMForm', nil);
    if hwndOtherInstance<>0 then
     begin
      if IsIconic(hwndOtherInstance) then
         ShowWindow(hwndOtherInstance, SW_RESTORE);
      SetForegroundWindow(hwndOtherInstance);
     end;
    //��������� ��������
    Application.Terminate();
    exit;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TOPMForm, OPMForm);
  Application.CreateForm(TPuzzleForm, PuzzleForm);
  Application.CreateForm(TBackgroundsForm, BackgroundsForm);
  Application.Run;
end.
