unit SelecionarImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmSelecionarImagemouQRCode = class(TForm)
    dlgAbrirImagem: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarImagemouQRCode: TfrmSelecionarImagemouQRCode;

implementation

{$R *.dfm}

{$REGION 'Fechando o Form'}
  procedure TfrmSelecionarImagemouQRCode.FormClose(Sender: TObject;
    var Action: TCloseAction);
  begin
    frmSelecionarImagemouQRCode := nil;
  end;
{$ENDREGION}

end.
