program HelloWorld;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  HelloDelphi in 'HelloDelphi.pas';

begin
  // iniciando um  tratamento de exce��es
  try
    // chamando o m�todo 'Hello' do arquivo 'HelloDelphi'
    Hello;
    // m�todo que l� a linha do arquivo e retorna uma string
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
