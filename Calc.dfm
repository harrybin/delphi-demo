object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 180
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelOp1: TLabel
    Left = 18
    Top = 8
    Width = 58
    Height = 15
    Caption = 'Operand 1:'
  end
  object Labelop2: TLabel
    Left = 170
    Top = 8
    Width = 58
    Height = 15
    Caption = 'Operand 2:'
  end
  object LabelRes: TLabel
    Left = 170
    Top = 108
    Width = 35
    Height = 15
    Caption = 'Result:'
  end
  object ButtonCalc: TButton
    Left = 20
    Top = 128
    Width = 101
    Height = 25
    Caption = 'Calc'
    TabOrder = 0
    OnClick = ButtonCalcClick
  end
  object EditOp1: TEdit
    Left = 18
    Top = 24
    Width = 103
    Height = 25
    TabOrder = 1
    Text = '31'
  end
  object EditOp2: TEdit
    Left = 170
    Top = 24
    Width = 103
    Height = 25
    TabOrder = 2
    Text = '11'
  end
  object EditResult: TEdit
    Left = 170
    Top = 129
    Width = 103
    Height = 25
    TabOrder = 3
  end
  object ComboBoxOperation: TComboBox
    Left = 20
    Top = 72
    Width = 253
    Height = 23
    ItemIndex = 0
    TabOrder = 4
    Text = 'Add'
    Items.Strings = (
      'Add'
      'Mult'
      'Subtract'
      'Divide')
  end
end
