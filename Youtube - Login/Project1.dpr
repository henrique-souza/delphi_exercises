program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {TelaDeLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaDeLogin, TelaDeLogin);
  Application.Run;
end.
