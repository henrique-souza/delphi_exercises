unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnAbrir2Monitores: TButton;
    Memo1: TMemo;
    procedure btnAbrir2MonitoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAbrir2MonitoresClick(Sender: TObject);
var
  I: integer;
  ScreenCount: integer;
  P: TPoint;
begin
  Memo1.Clear;
  ScreenCount := Screen.MonitorCount;
  P := Mouse.CursorPos;
  Memo1.Lines.Add('Monitor number: ' + IntToStr(ScreenCount));
  for I := 0 to ScreenCount - 1 do
  begin
    Memo1.Lines.Add('Screen.Width: ' + IntToStr(Screen.Width));
    Memo1.Lines.Add('Monitor: ' + IntToStr(Screen.Monitors[I].MonitorNum));
    Memo1.Lines.Add('Top: ' + IntToStr(Screen.Monitors[I].Top));
    Memo1.Lines.Add('Left: ' + IntToStr(Screen.Monitors[I].Left));
    Memo1.Lines.Add('Width: ' + IntToStr(Screen.Monitors[I].Width));
    Memo1.Lines.Add('Height: ' + IntToStr(Screen.Monitors[I].Height));
    Memo1.Lines.Add('MonitorFromRect(mdNearest): ' +
        IntToStr((Screen.MonitorFromRect(TRect.Create(P, 100, 100), mdNearest))
          .MonitorNum));
    Memo1.Lines.Add('Mouse.CursorPos: ' + IntToStr(P.X) + ' ' + IntToStr(P.Y));
  end;
end;

end.
