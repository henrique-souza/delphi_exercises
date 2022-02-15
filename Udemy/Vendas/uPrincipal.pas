unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TformPrincipal = class(TForm)
    MainPrincipal: TMainMenu;
    a1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    MOVIMENTAO2: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    FecharAplicacao: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Vendas2: TMenuItem;
    procedure FecharAplicacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

procedure TformPrincipal.FecharAplicacaoClick(Sender: TObject);
begin
  // Close;
  Application.Terminate;
end;

end.
