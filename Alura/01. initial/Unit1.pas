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
    // aqui ficam os métodos, objetos, atributos e variáveis que
    // só iremos usar dentro deste form
    { Private declarations }
  public
    // aqui ficariam os métodos, objetos, atributos e variaveis que
    // podemos usar em diversos forms.
    // Troca de dados entre formularios
    { Public declarations }
  end;

var
  Form1: TForm1;
  // a declaração de variáveis no Delphi é fortemente tipada
  // dar uma lida melhor sobre variaveis no livro
  // var1: string;
  // var2: Integer;
  // var3: Real;
  // temos outros tipos de variaveis, como:
  // Double
  // Currency, entre outras... (Consultar livro depois)

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // var1 := 'mensagem';
  // ".text" quer dizer que estamos manipulando a propriedade "Text",
  // na caixa de propriedades do botão, ao lado esquerdo da IDE.
  // Edit1.text := var1;
  //
  // var2 := 1000;
  // o Delphi não converte automaticamente o número em texto.
  // usaremos o método 'IntToStr()' para que isso ocorra sem problemas.
  // Edit1.text := IntToStr(var2);
  //
  // var3 := 1000.13;
  // usaremos o método 'FloatToStr()' para converter o número real
  // para texto, para conseguirmos visualizar no nosso Form, sem problemas.
  // Edit1.text := FloatToStr(var3);
end;

end.
