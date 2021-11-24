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
  private
    // aqui ficam as variáveis que só iremos usar dentro deste form
    { Private declarations }
  public
    // aqui ficariam as variaveis que podemos usar em diversos forms
    // troca de dados entre formularios
    { Public declarations }
  end;

var
  Form1: TForm1;
  // a declaração de variáveis no Delphi é fortemente tipada

implementation

{$R *.dfm}

end.
