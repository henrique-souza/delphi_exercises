program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {formPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
