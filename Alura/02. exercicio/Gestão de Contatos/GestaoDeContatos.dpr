program GestaoDeContatos;

uses
  Vcl.Forms,
  Unit_Contatos in 'Unit_Contatos.pas' {Contatos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TContatos, Contatos);
  Application.Run;
end.
