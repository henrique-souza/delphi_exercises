program ProjectTDD;

uses
  Vcl.Forms,
  CalculadoraTDD in 'CalculadoraTDD.pas' {FormTDD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormTDD, FormTDD);
  Application.Run;
end.
