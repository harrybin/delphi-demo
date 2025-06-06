program TestRunner;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Vcl.Forms,
  Calc in 'Calc.pas' {Form1},
  CalcTests in 'CalcTests.pas';

var
  Tests: TCalcTests;

begin
  try
    Application.Initialize;
    Tests := TCalcTests.Create;
    try
      Tests.RunAllTests;
    finally
      Tests.Free;
    end;
    
    WriteLn('');
    WriteLn('Press Enter to exit...');
    ReadLn;
  except
    on E: Exception do
    begin
      WriteLn('Error: ' + E.Message);
      WriteLn('Press Enter to exit...');
      ReadLn;
    end;
  end;
end.