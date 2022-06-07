program EscaneadorBarQRCode;

uses
  Vcl.Forms,
  Escaner in 'Escaner.pas' {EscaneadorCodigoBarrasQRCode},
  uCapture in 'uCapture.pas' {frmCapture};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEscaneadorCodigoBarrasQRCode, EscaneadorCodigoBarrasQRCode);
  Application.Run;
end.
