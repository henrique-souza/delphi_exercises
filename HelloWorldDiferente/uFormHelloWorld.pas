unit uFormHelloWorld;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFormHelloWorld = class(TForm)
    buttonHelloWorld: TButton;
    procedure buttonHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelloWorld: TFormHelloWorld;

implementation

{$R *.fmx}
{$R *.GGlass.fmx ANDROID}
{$R *.iPhone47in.fmx IOS}
{$R *.Macintosh.fmx MACOS}
{$R *.Windows.fmx MSWINDOWS}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}

procedure TFormHelloWorld.buttonHelloWorldClick(Sender: TObject);
begin
  ShowMessage('Primeiros passos no poderoso Delphi!');

end;

end.
