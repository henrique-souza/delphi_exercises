unit CodigosPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtDlgs;

type
  TfrmLeitorCodigosBarraCodigoQR = class(TForm)
    grpCodigosPagamento: TGroupBox;
    lblCodigoDeBarras: TLabel;
    lblLinhaDigitavel: TLabel;
    lblQRCODE: TLabel;
    edtCodigoDeBarras: TEdit;
    edtLinhaDigitavel: TEdit;
    edtQRCode: TEdit;
    btnSelecionarImagem: TButton;
    grpLerImagemCodigoBarrasQR: TGroupBox;
    procedure btnSelecionarImagemClick(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmLeitorCodigosBarraCodigoQR: TfrmLeitorCodigosBarraCodigoQR;

implementation

uses
  SelecionarImagem;

{$R *.dfm}
// { Ainda estudando
// https://blogs.embarcadero.com/powerful-optical-barcode-recognition-component-
// for-delphi-firemonkey-by-winsoft/
// alguns links na pasta dos Favoritos, Henrique. }

{$REGION 'Clicar em Selecionar Imagem'}

procedure TfrmLeitorCodigosBarraCodigoQR.btnSelecionarImagemClick
  (Sender: TObject);
begin
  // Quando houver o clique em "Selecionar Imagem", o form será chamado
  // frmSelecionarImagemouQRCode.Create();
  // dlgAbrirImagem2.Create(Self);
  if frmSelecionarImagemouQRCode = nil then
  begin
    frmSelecionarImagemouQRCode := TfrmSelecionarImagemouQRCode.Create(Self);
    frmSelecionarImagemouQRCode.ShowModal;
  end;

end;
{$ENDREGION}

end.
