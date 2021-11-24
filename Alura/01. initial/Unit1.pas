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
    Label3: TLabel;
    Comprar: TButton;
    Mensagem: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComprarClick(Sender: TObject);
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

  // var1: string;
  // var2: Integer;
  // var3: Real;

  // temos outros tipos de variaveis, como:
  // Double
  // Currency, entre outras... (Consultar livro depois)
  ValorReal: REAL;

  ValorDoNome: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // var1 := 'mensagem';

  // ".text" quer dizer que estamos manipulando a propriedade "Text",
  // na caixa de propriedades do bot�o, ao lado esquerdo da IDE.

  // Edit1.text := var1;

  //

  // var2 := 1000;

  // o Delphi n�o converte automaticamente o n�mero em texto.
  // usaremos o m�todo 'IntToStr()' para que isso ocorra sem problemas.

  // Edit1.text := IntToStr(var2);

  //

  // var3 := 1000.13;

  // usaremos o m�todo 'FloatToStr()' para converter o n�mero real
  // para texto, para conseguirmos visualizar no nosso Form, sem problemas.

  // Edit1.text := FloatToStr(var3);

  //

  if DOLAR.Text = '' then

  // caso o bloco 'if' tenha um bloco 'begin...end' contendo um 'end;', por
  // padr�o, o Delphi acusar� que o if n�o tem um 'else', por exemplo. Isso far�
  // com que nosso 'else' n�o seja executado/d� erro de sintaxe. Para resolver
  // isso, removemos o ' ; ' do bloco 'end' dentro de if.
  begin
    ShowMessage('Por favor, digite um valor em Dolar');
  end

  // caso o bloco 'else' n�o tenha um 'begin...end', o Delphi ir� executar
  // apenas o primeiro bloco de c�digo. Neste caso, seria apenas a opera��o
  // armazenada em 'ValorReal'.
  else
  begin
    // quando o usuario clicar no botao 'Converter', vamos habilitar o bot�o
    // 'Compra'.
    Comprar.Enabled := True;

    // o m�todo 'StrToFloat()' est� pegando o conte�do (em texto) da caixa
    // DOLAR e convertendo para um n�mero Flutuante, para que possa ser feito
    // o c�lculo (tamb�m por um n�mero flutuante) da convers�o da moeda.
    ValorReal := StrToFloat(DOLAR.Text) * 3.9;
    REAL.Text := FloatToStr(ValorReal);
  end;

end;

procedure TForm1.ComprarClick(Sender: TObject);
begin
  // o m�todo 'InputBox()' tem 3 parametros para serem
  // preenchidos, respectivamente:
  // 1. Caption
  // 2. Prompt
  // 3. Default
  ValorDoNome := InputBox('Nome', 'Digite seu nome, por favor', '');

  // quando o usuario clicar em 'Compra', um bot�o invisivel adicionado
  // chamado 'Mensagem' ir� imprimir o que foi armazenado na varivel
  // 'ValorDoNome'.

  // o c�digo ' + #13 + ' equivale a quebra de linha.
  // O comando abaixo faz com que uma mensagem (Caption) seja setado ao Label.
  Mensagem.Caption := 'Valor convertido, ' + ValorDoNome + #13 + #13 +
    'Voc� comprou ' + DOLAR.Text + ' Dolar(es). Volte sempre.';
end;

end.
