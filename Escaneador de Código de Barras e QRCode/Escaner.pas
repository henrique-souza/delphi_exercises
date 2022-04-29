unit Escaner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.StdCtrls, Vcl.Controls, Vcl.Graphics, Vcl.Forms,
  Vcl.Dialogs, System.UITypes;

type
  TForm1 = class(TForm)
    memoCodigoLido: TMemo;
    btnLerCodigoBarrasQRCode: TButton;
    procedure btnLerCodigoBarrasQRCodeClick(Sender: TObject);

  private
    FMaxRight, FMaxBottom: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Clipbrd, uCapture, Vcl.imaging.pngImage, Vcl.imaging.jpeg, ZXing.ReadResult,
  ZXing.BarCodeFormat, ZXing.ScanManager;

{$R *.dfm}

procedure TForm1.btnLerCodigoBarrasQRCodeClick(Sender: TObject);
var
  FerramentaDeCaptura: TfrmCapture;
  LeitorDoResultado: TReadResult;
  Escaneador: TScanManager;
  ImagemCapturada: Vcl.Graphics.TBitmap;
begin
  LeitorDoResultado := nil;
  Escaneador := nil;
  ImagemCapturada := nil;

  // Tira o Form atual da frente da tela
  Self.Visible := False;

  FerramentaDeCaptura := TfrmCapture.Create(nil);

  memoCodigoLido.Clear;

  if MessageDlg('Testando ', mtInformation, [mbOK], 0) = mrOk then
  begin
    try
      // Chamando a ferramenta de captura de tela
      FerramentaDeCaptura.ShowModal;
      try

        if Assigned(FerramentaDeCaptura.FPrint) then
        begin
          ImagemCapturada := TBitmap.Create;

          ImagemCapturada := FerramentaDeCaptura.FPrint;

          Escaneador := TScanManager.Create(TBarcodeFormat.Auto, nil);

          LeitorDoResultado := Escaneador.Scan(ImagemCapturada);

          if LeitorDoResultado <> nil then
            // Escrevendo o resultado do Scan no Memo
            memoCodigoLido.Lines.Text := LeitorDoResultado.Text
          else
            memoCodigoLido.Lines.Text := 'Não consegui ler!';

          FMaxRight := ImagemCapturada.Width;
          FMaxBottom := ImagemCapturada.Height;

          Self.Width := 650;

//          if ImagemCapturada.Width > Self.Width then
//            Self.Width := Round(ImagemCapturada.Width * 2);

          // if Self.Width > Screen.Width then
          // Self.Width := Screen.Width;
          //
          // if Self.Height > Screen.Height then
          // Self.Height := Screen.Height - 30;

          BringToFront;
        end;

      except
        on EArgumentException do
          MessageDlg('Não há código válido nesta seleção', mtInformation,
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

end.
