program LeitorCodigoBarraQRCode;

uses
  Vcl.Forms,
  CodigosPagamento in 'CodigosPagamento.pas' {frmLeitorCodigosBarraCodigoQR},
  SelecionarImagem in 'SelecionarImagem.pas' {frmSelecionarImagemouQRCode};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLeitorCodigosBarraCodigoQR, frmLeitorCodigosBarraCodigoQR);
  Application.Run;

end.
