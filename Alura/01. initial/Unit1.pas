unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    // aqui ficam os m�todos, objetos, atributos e vari�veis que
    // s� iremos usar dentro deste form
    { Private declarations }
  public
    // aqui ficariam os m�todos, objetos, atributos e variaveis que
    // podemos usar em diversos forms.
    // Troca de dados entre formularios
    { Public declarations }
  end;

var
  Form1: TForm1;
  // a declara��o de vari�veis no Delphi � fortemente tipada
  // dar uma lida melhor sobre variaveis no livro
  var1: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  var1 := 'mensagem';
  // ".text" quer dizer que estamos manipulando a propriedade "Text",
  // na caixa de propriedades do bot�o, ao lado esquerdo da IDE.
  Edit1.text := var1;

end;

end.
