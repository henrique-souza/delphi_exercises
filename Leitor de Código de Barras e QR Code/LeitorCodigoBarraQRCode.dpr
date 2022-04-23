program LeitorCodigoBarraQRCode;

uses
  Vcl.Forms,
  CodigosPagamento in 'CodigosPagamento.pas' {frmLeitorCodigosBarraCodigoQR},
  Vcl.Themes,
  Vcl.Styles,
  SelecionarImagem in 'SelecionarImagem.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TfrmLeitorCodigosBarraCodigoQR, frmLeitorCodigosBarraCodigoQR);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
