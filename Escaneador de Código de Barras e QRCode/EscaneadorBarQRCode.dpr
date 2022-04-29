program EscaneadorBarQRCode;

uses
  Vcl.Forms,
  Escaner in 'Escaner.pas' {Form1},
  uCapture in 'uCapture.pas' {frmCapture};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
