unit SelecionarImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    OpenDialog: TOpenDialog;
    mmoCodigoLido: TMemo;
    uploadImagem: TImage;
    pnlBotaoEnviarCodigo: TPanel;
    btnEnviarCodigoLido: TButton;
    procedure FormActivate(Sender: TObject);
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
  Se o Tmemo estiver vazio, abrir o OpenDialog para pessoa poder enviar uma foto
}

procedure TForm1.FormActivate(Sender: TObject);
begin
  OpenDialog.Execute();
end;

end.
