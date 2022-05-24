program fsMDIFormTeste;

uses
  Vcl.Forms,
  uParent in 'uParent.pas' {frmParent},
  uChild in 'uChild.pas' {frmChild};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmParent, frmParent);
  //Application.CreateForm(TfrmChild, frmChild);
  Application.Run;
end.
