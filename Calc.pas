unit Calc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.ButtonCalcClick(Sender: TObject);
begin
  var op1 := StrToInt( EditOp1.Text);
  var op2 := StrToInt(EditOp2.Text);
  if ComboBoxOperation.ItemIndex = 0 then Add(op1,op2);
  if ComboBoxOperation.ItemIndex = 1 then Mult(op1,op2);


end;

procedure TForm1.Add( op1: integer; op2: integer);
begin
  EditResult.Text := IntToStr( op1 + op2);
end;

procedure TForm1.Mult( op1: integer; op2: integer);
begin
  EditResult.Text := IntToStr( op1 * op2);
end;

end.
