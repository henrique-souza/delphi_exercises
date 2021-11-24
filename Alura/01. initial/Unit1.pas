unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    Button1: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  ValorReal: REAL;

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

  //

  if DOLAR.Text = '' then
  // caso o bloco 'if' tenha um bloco 'begin...end' contendo um 'end;', por
  // padrão, o Delphi acusará que o if não tem um 'else', por exemplo. Isso fará
  // com que nosso 'else' não seja executado/dê erro de sintaxe. Para resolver
  // isso, removemos o ' ; ' do bloco 'end' dentro de if.
  begin
    ShowMessage('Por favor, digite um valor em Dolar');
  end

  // caso o bloco 'else' não tenha um 'begin...end', o Delphi irá executar
  // apenas o primeiro bloco de código. Neste caso, seria apenas a operação
  // armazenada em 'ValorReal'.
  else
  begin
    // o método 'StrToFloat()' está pegando o conteúdo (em texto) da caixa
    // DOLAR e convertendo para um número Flutuante, para que possa ser feito
    // o cálculo (também por um número flutuante) da conversão da moeda.
    ValorReal := StrToFloat(DOLAR.Text) * 3.9;
    REAL.Text := FloatToStr(ValorReal);
  end;

end;

end.
