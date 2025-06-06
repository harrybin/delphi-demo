program XebiaDelphiDemo1;

{$MODE Delphi}

uses
  Interfaces, // LCL widgetset for Lazarus
  Forms,
  Calc in 'Calc.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
