program MyProgram;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

(*
  Pagina 5 do Livro
  Delphi - Modern Pascal
*)

procedure MyProcedure(const A: Integer);
begin
  WriteLn('A + 10 is: ', A + 10);

end;

function MyFunction(const S: string): string;
begin
  Result := S + 'strings are automatically maneged';
end;

var
  X: Single;

begin
  WriteLn(MyFunction('Note: '));
  MyProcedure(5);

  // Divis�o usando "/" sempre ir� resultar num FLOAT
  // usamos "div" para divis�o de integers
  X := 15 / 5;
  WriteLn('X is now: ', X); // nota��o cient�fica
  WriteLn('X is now: ', X:1:2); // 2 decimais

end.
