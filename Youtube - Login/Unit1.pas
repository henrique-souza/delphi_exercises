unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.WinXCtrls;

type
  TTelaDeLogin = class(TForm)
    Painel_Fundo: TPanel;
    Painel_Lateral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image_Empresa: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaDeLogin: TTelaDeLogin;

implementation

{$R *.dfm}

end.
