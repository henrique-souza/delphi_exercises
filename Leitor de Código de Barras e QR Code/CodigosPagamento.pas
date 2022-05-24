unit CodigosPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtDlgs, Vcl.ExtCtrls;

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
{
  Ainda estudando
  https://blogs.embarcadero.com/powerful-optical-barcode-recognition-component-
  for-delphi-firemonkey-by-winsoft/
  alguns links na pasta dos Favoritos, Henrique.

  OBJETIVO
  Tentar fazer com que o ZXing leia arquivos e imagens e a partir do momento que
  ele decodifica o Código QR ou Código de Barras, ele insira nos campos
  determinados para que o usuário consiga continuar as operações.
}

procedure TfrmLeitorCodigosBarraCodigoQR.btnSelecionarImagemClick
  (Sender: TObject);
var
  campoQRCode: string; // Declarando variável para manipular o TEdit
  OpenDialog: TOpenDialog;
begin
  {
    Tentar fazer um tratamento adicionar com uma pergunta, e dependendo da resposta
    do Swith Case, a pessoa será levada ou pro Selecionar Imagem, ou pra Webcam.
  }

  if MessageDlg('Testando: Deseja utiizar a Webcam para Escanear? ',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
  begin
    {
      Manipulando TEdit, atribuindo valor Texto a ele
    }
    campoQRCode := edtQRCode.text;
    // Se for diferente de Vazio, mostra uma mensagem
    if campoQRCode <> '' then
    begin
      ShowMessage('Campo de QRCode já está preenchido.');
    end
    else
    begin
      // Abre o segundo form
      Application.CreateForm(TForm1, Form1);
      Form1.ShowModal;
      {
        Estudar mais uma condição, para que se caso o cliente abra a Seleção de
        Imagens, o OpenDialog abra automaticamente
      }
    end;
  end
  else
  begin
  end;

end;

end.
