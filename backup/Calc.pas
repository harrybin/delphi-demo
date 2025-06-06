unit Calc;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonCalc: TButton;
    EditOp1: TEdit;
    LabelOp1: TLabel;
    EditOp2: TEdit;
    Labelop2: TLabel;
    EditResult: TEdit;
    LabelRes: TLabel;
    ComboBoxOperation: TComboBox;
    procedure ButtonCalcClick(Sender: TObject);
    procedure Add( op1: integer; op2: integer);
    procedure Mult( op1: integer; op2: integer);
    procedure Subtract( op1: integer; op2: integer);
    procedure Divide( op1: integer; op2: integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}



procedure TForm1.ButtonCalcClick(Sender: TObject);
var
  op1, op2: integer;
begin
  op1 := StrToInt(EditOp1.Text);
  op2 := StrToInt(EditOp2.Text);
  if ComboBoxOperation.ItemIndex = 0 then Add(op1, op2);
  if ComboBoxOperation.ItemIndex = 1 then Mult(op1, op2);
  if ComboBoxOperation.ItemIndex = 2 then Subtract(op1, op2);
  if ComboBoxOperation.ItemIndex = 3 then Divide(op1, op2);


end;

procedure TForm1.Add( op1: integer; op2: integer);
begin
  EditResult.Text := IntToStr( op1 + op2);
end;

procedure TForm1.Mult( op1: integer; op2: integer);
begin
  EditResult.Text := IntToStr( op1 * op2);
end;

procedure TForm1.Subtract( op1: integer; op2: integer);
begin
  EditResult.Text := IntToStr( op1 - op2);
end;

procedure TForm1.Divide( op1: integer; op2: integer);
begin
  if op2 = 0 then
    EditResult.Text := 'Error: Division by zero'
  else
    EditResult.Text := IntToStr( op1 div op2);
end;

end.
