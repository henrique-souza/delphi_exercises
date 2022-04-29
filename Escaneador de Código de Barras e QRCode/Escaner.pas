unit Escaner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.StdCtrls, Vcl.Controls, Vcl.Graphics, Vcl.Forms,
  Vcl.Dialogs, System.UITypes, Vcl.imaging.pngImage, Vcl.imaging.jpeg,
  ZXing.ReadResult, ZXing.BarCodeFormat, ZXing.ScanManager;

type
  TForm1 = class(TForm)
    memoCodigoLido: TMemo;
    btnLerCodigoBarras: TButton;
    mmoLeitorQRCode: TMemo;
    btnLerQRCode: TButton;
    procedure btnLerCodigoBarrasClick(Sender: TObject);
    procedure btnLerQRCodeClick(Sender: TObject);
  private
    FMaxRight, FMaxBottom: Integer;
    function Decodificar(const FormatoCodigo: TBarcodeFormat): TReadResult;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Clipbrd, uCapture;

{$R *.dfm}

procedure TForm1.btnLerCodigoBarrasClick(Sender: TObject);
begin
  btnLerQRCode.Enabled := False;
  Decodificar(TBarcodeFormat.Auto);
  btnLerQRCode.Enabled := True;
  mmoLeitorQRCode.Clear;
end;

procedure TForm1.btnLerQRCodeClick(Sender: TObject);
begin
  btnLerCodigoBarras.Enabled := False;
  Decodificar(TBarcodeFormat.QR_CODE);
  btnLerCodigoBarras.Enabled := True;
  memoCodigoLido.Clear;
end;

{$REGION 'Código que Decodifica o que foi Capturado pelo Usuário'}

function TForm1.Decodificar(const FormatoCodigo: TBarcodeFormat): TReadResult;
var
  FerramentaDeCaptura: TfrmCapture;
  LeitorDoResultado: TReadResult;
  Escaneador: TScanManager;
  ImagemCapturada: Vcl.Graphics.TBitmap;
begin

  LeitorDoResultado := nil;
  Escaneador := nil;
  ImagemCapturada := nil;

  // Tira o TForm1 atual da frente da tela
  Self.Visible := False;
  // Chama o From de Captura
  FerramentaDeCaptura := TfrmCapture.Create(nil);
  // Limpa os TMemo
  memoCodigoLido.Clear;
  mmoLeitorQRCode.Clear;

  // Se o usuário clicar em OK, a Ferramenta de Captura é inicada.
  if MessageDlg
    ('Se caso o documento seja um PDF, para maior precisão:'#13#10'Abra o documento a ser escaneado com algum NAVEGADOR.',
    mtInformation, [mbOK], 0) = mrOk then
  begin

    try
      // Chamando a ferramenta de captura de tela
      FerramentaDeCaptura.ShowModal;

      try

        if Assigned(FerramentaDeCaptura.FPrint) then
        begin
          ImagemCapturada := TBitmap.Create;

          ImagemCapturada := FerramentaDeCaptura.FPrint;

          // Atribuindo a melhor qualidade possível para a imagem
          ImagemCapturada.PixelFormat := pf32bit;

          Escaneador := TScanManager.Create(FormatoCodigo, nil);

          // Leitor recebendo o que foi escaneado pelo Escaneador
          LeitorDoResultado := Escaneador.Scan(ImagemCapturada);

          if LeitorDoResultado <> nil then
          begin
            // Manipulando o Botão de Ler Código de Barras
            if btnLerCodigoBarras.Enabled = True then

              // Escreve o resultado do Codigo de Barras no Memo
              memoCodigoLido.Lines.Text := LeitorDoResultado.Text

              // Manipulando o Botão do QRCode
            else if btnLerQRCode.Enabled = True then

              // Escreve o resultado do QRCode no Memo
              mmoLeitorQRCode.Lines.Text := LeitorDoResultado.Text;
          end
          else
          begin
            MessageDlg('Não consegui ler. Tente novamente!', mtWarning,
              [mbOK], 0);
          end;

          FMaxRight := ImagemCapturada.Width;
          FMaxBottom := ImagemCapturada.Height;

          BringToFront;
        end;

      except
        on EArgumentException do
          MessageDlg('Não há código válido nesta seleção', mtWarning,
            [mbOK], 0);
      end;

    finally
      FerramentaDeCaptura.Free;
      Self.Visible := True;
      Escaneador.Free;
      LeitorDoResultado.Free;
    end;
  end;
end;
{$ENDREGION}

end.
