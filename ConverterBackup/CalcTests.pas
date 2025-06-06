unit CalcTests;

interface

uses
  System.SysUtils, Calc;

type
  TCalcTests = class
  private
    Form1: TForm1;
  public
    constructor Create;
    destructor Destroy; override;
    function TestAdd: Boolean;
    function TestMultiply: Boolean;
    function TestSubtract: Boolean;
    function TestDivide: Boolean;
    function TestDivideByZero: Boolean;
    procedure RunAllTests;
  end;

implementation

constructor TCalcTests.Create;
begin
  inherited;
  Form1 := TForm1.Create(nil);
end;

destructor TCalcTests.Destroy;
begin
  Form1.Free;
  inherited;
end;

function TCalcTests.TestAdd: Boolean;
begin
  // Test addition: 10 + 5 = 15
  Form1.Add(10, 5);
  Result := Form1.EditResult.Text = '15';
  if Result then
    WriteLn('✓ Add test passed: 10 + 5 = 15')
  else
    WriteLn('✗ Add test failed: Expected 15, got ' + Form1.EditResult.Text);
end;

function TCalcTests.TestMultiply: Boolean;
begin
  // Test multiplication: 7 * 8 = 56
  Form1.Mult(7, 8);
  Result := Form1.EditResult.Text = '56';
  if Result then
    WriteLn('✓ Multiply test passed: 7 * 8 = 56')
  else
    WriteLn('✗ Multiply test failed: Expected 56, got ' + Form1.EditResult.Text);
end;

function TCalcTests.TestSubtract: Boolean;
begin
  // Test subtraction: 20 - 8 = 12
  Form1.Subtract(20, 8);
  Result := Form1.EditResult.Text = '12';
  if Result then
    WriteLn('✓ Subtract test passed: 20 - 8 = 12')
  else
    WriteLn('✗ Subtract test failed: Expected 12, got ' + Form1.EditResult.Text);
end;

function TCalcTests.TestDivide: Boolean;
begin
  // Test division: 24 / 6 = 4
  Form1.Divide(24, 6);
  Result := Form1.EditResult.Text = '4';
  if Result then
    WriteLn('✓ Divide test passed: 24 / 6 = 4')
  else
    WriteLn('✗ Divide test failed: Expected 4, got ' + Form1.EditResult.Text);
end;

function TCalcTests.TestDivideByZero: Boolean;
begin
  // Test division by zero: 10 / 0 should return error message
  Form1.Divide(10, 0);
  Result := Form1.EditResult.Text = 'Error: Division by zero';
  if Result then
    WriteLn('✓ Divide by zero test passed: Returns error message')
  else
    WriteLn('✗ Divide by zero test failed: Expected error message, got ' + Form1.EditResult.Text);
end;

procedure TCalcTests.RunAllTests;
var
  PassedTests, TotalTests: Integer;
begin
  WriteLn('Running Calculator Tests...');
  WriteLn('==========================');
  
  PassedTests := 0;
  TotalTests := 5;
  
  if TestAdd then Inc(PassedTests);
  if TestMultiply then Inc(PassedTests);
  if TestSubtract then Inc(PassedTests);
  if TestDivide then Inc(PassedTests);
  if TestDivideByZero then Inc(PassedTests);
  
  WriteLn('');
  WriteLn('Test Results: ' + IntToStr(PassedTests) + '/' + IntToStr(TotalTests) + ' tests passed');
  
  if PassedTests = TotalTests then
    WriteLn('✓ All tests passed!')
  else
    WriteLn('✗ Some tests failed.');
end;

end.