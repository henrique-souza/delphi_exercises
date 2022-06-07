unit ArrayOfDouble;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  // Define dynamic arrays
  byteArray: array of Byte; // Single dimension array
  multiArray: array of array of string; // Multi-dimension array

  i, j: Integer;
begin
  // Set the length of the single dimension array
  SetLength(byteArray, 5);

  // Show the size and range of this array
  ShowMessage('byteArray length = ' + IntToStr(Length(byteArray)));
  ShowMessage('byteArray lowest element = ' + IntToStr(Low(byteArray)));
  ShowMessage('byteArray highest element = ' + IntToStr(High(byteArray)));

  // Furnish this array - remember that dynamic arrays start at 0
  for i := 0 to 4 do
    byteArray[i] := i * 5;

  // Show selected elements from the array
  ShowMessage('byteArray element 2 = ' + IntToStr(byteArray[2]));
  ShowMessage('byteArray element 4 = ' + IntToStr(byteArray[4]));

  // Set the length of the 1st dimension of the multi-dim array
  SetLength(multiArray, 3);

  // Set the length of the 3 sub-arrays to different sizes
  SetLength(multiArray[0], 1);
  SetLength(multiArray[1], 2);
  SetLength(multiArray[2], 3);

  // Set and show all elements of this array
  for i := 0 to High(multiArray) do
    for j := 0 to High(multiArray[i]) do
    begin
      multiArray[i, j] := IntToStr(i + j);
      ShowMessage('multiArray[' + IntToStr(i) + ',' + IntToStr(j) + '] = ' +
        multiArray[i, j]);
    end;
end;

end.
