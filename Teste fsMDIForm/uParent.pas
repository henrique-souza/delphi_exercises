unit uParent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmParent = class(TForm)
    mmParent: TMainMenu;
    mniOpenChildForm1: TMenuItem;
    procedure mniOpenChildForm1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParent: TfrmParent;

implementation

uses
  uChild;

{$R *.dfm}

procedure TfrmParent.mniOpenChildForm1Click(Sender: TObject);
begin
  if Assigned(frmChild) then
  begin
    frmChild.WindowState := wsMaximized;
  end
  else
    frmChild := TfrmChild.Create(Application);
  frmChild.Show;
end;

end.
