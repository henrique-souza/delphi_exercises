program HelloWorld;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  HelloDelphi in 'HelloDelphi.pas';

begin
  // iniciando um  tratamento de exceções
  try
    // chamando o método 'Hello' do arquivo 'HelloDelphi'
    Hello;
    // método que lê a linha do arquivo e retorna uma string
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
