unit FRemoverItensPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, System.Character, System.RegularExpressions;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function FindLastDateAndExtractText(const inputText: string): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  TextoFormatado1, TextoFormatado2, TextoFormatado3, TextoFormatado4,
    TextoFormatado5: string;
  TesteString: string;
begin
  Memo1.Text := StringReplace(Memo1.Text, ' ', '',
    [rfReplaceAll, rfIgnoreCase]);

  TesteString := FindLastDateAndExtractText(Memo1.Text);

  TesteString := StringReplace(TesteString, '/', '',
    [rfReplaceAll, rfIgnoreCase]);

  TesteString := StringReplace(TesteString, 'R$:', '',
    [rfReplaceAll, rfIgnoreCase]);

  TesteString := StringReplace(TesteString, sLineBreak, '',
    [rfReplaceAll, rfIgnoreCase]);

  Memo2.Text := TesteString;
end;

function TForm1.FindLastDateAndExtractText(const inputText: string): string;
var
  regex: TRegEx;
  matches: TMatchCollection;
  lastDate: string;
begin
  regex := TRegEx.Create('\d{2}/\d{2}/\d{4}');
  matches := regex.matches(inputText);

  if matches.Count > 0 then
  begin
    lastDate := matches.Item[matches.Count - 1].Value;

    Result := Copy(inputText, Pos(lastDate, inputText) + Length(lastDate),
      MaxInt).Trim;
  end
  else
  begin
    Result := '';
  end;
end;

end.
