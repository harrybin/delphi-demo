object Form1: TForm1
  Left = 0
  Height = 180
  Top = 0
  Width = 296
  Caption = 'Form1'
  ClientHeight = 180
  ClientWidth = 296
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  LCLVersion = '4.0.0.4'
  object LabelOp1: TLabel
    Left = 18
    Height = 15
    Top = 8
    Width = 58
    Caption = 'Operand 1:'
  end
  object Labelop2: TLabel
    Left = 170
    Height = 15
    Top = 8
    Width = 58
    Caption = 'Operand 2:'
  end
  object LabelRes: TLabel
    Left = 170
    Height = 15
    Top = 108
    Width = 35
    Caption = 'Result:'
  end
  object ButtonCalc: TButton
    Left = 20
    Height = 25
    Top = 128
    Width = 101
    Caption = 'Calc'
    TabOrder = 0
    OnClick = ButtonCalcClick
  end
  object EditOp1: TEdit
    Left = 18
    Height = 25
    Top = 24
    Width = 103
    TabOrder = 1
    Text = '31'
  end
  object EditOp2: TEdit
    Left = 170
    Height = 25
    Top = 24
    Width = 103
    TabOrder = 2
    Text = '11'
  end
  object EditResult: TEdit
    Left = 170
    Height = 25
    Top = 129
    Width = 103
    TabOrder = 3
  end
  object ComboBoxOperation: TComboBox
    Left = 20
    Height = 23
    Top = 72
    Width = 253
    ItemHeight = 0
    ItemIndex = 0
    Items.Strings = (
      'Add'
      'Mult'
      'Subtract'
      'Divide'
    )
    TabOrder = 4
    Text = 'Add'
  end
end
