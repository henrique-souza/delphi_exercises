program GestaoDeContatos;

uses
  Vcl.Forms,
  GestaoDeContatos in 'GestaoDeContatos.pas' {Contatos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TContatos, Contatos);
  Application.Run;
end.
