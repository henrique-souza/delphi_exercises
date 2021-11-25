program PROJETO_CONTATOS;

uses
  Vcl.Forms,
  UNIT1_CONTATOS in 'UNIT1_CONTATOS.pas' {FORM_CONTATOS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFORM_CONTATOS, FORM_CONTATOS);
  Application.Run;
end.
