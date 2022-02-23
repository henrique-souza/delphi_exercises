unit CodigosPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    CodigosPagamento: TGroupBox;
    lblCodigoDeBarras: TLabel;
    lblLinhaDigitavel: TLabel;
    lblQRCODE: TLabel;
    edtCodigoDeBarras: TEdit;
    edtLinhaDigitavel: TEdit;
    edtQRCode: TEdit;
    dlgOpenPic1: TOpenPictureDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  { 
  Ainda estudando
  https://blogs.embarcadero.com/powerful-optical-barcode-recognition-component-
  for-delphi-firemonkey-by-winsoft/
  https://wiki.freepascal.org/TOpenPictureDialog
   }

end.
