object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Vigener Coding'
  ClientHeight = 482
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelKeyLength: TLabel
    Left = 291
    Top = 329
    Width = 74
    Height = 13
    Caption = 'Key length: n/a'
  end
  object LabelCurrentKey: TLabel
    Left = 288
    Top = 299
    Width = 80
    Height = 13
    Caption = 'Current key: n/a'
  end
  object MemoCodingText: TMemo
    Left = 240
    Top = 8
    Width = 195
    Height = 225
    Lines.Strings = (
      'MemoCodingText')
    TabOrder = 0
  end
  object MemoText: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 225
    Lines.Strings = (
      'MemoText')
    TabOrder = 1
  end
  object ButtonAddKey: TButton
    Left = 135
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Add Key'
    TabOrder = 2
    OnClick = ButtonAddKeyClick
  end
  object EditKey: TEdit
    Left = 8
    Top = 386
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = EditKeyKeyPress
  end
  object ButtonCoding: TButton
    Left = 8
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Enciphring'
    TabOrder = 4
    OnClick = ButtonCodingClick
  end
  object MemoDecodingText: TMemo
    Left = 480
    Top = 8
    Width = 185
    Height = 225
    Lines.Strings = (
      'MemoDecodingText')
    TabOrder = 5
  end
  object RadioButtonLineKey: TRadioButton
    Left = 8
    Top = 298
    Width = 137
    Height = 17
    Caption = #1055#1088#1103#1084#1086#1081' '#1082#1083#1102#1095
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = RadioButtonLineKeyClick
  end
  object RadioButtonGenerKey: TRadioButton
    Left = 8
    Top = 321
    Width = 137
    Height = 17
    Caption = #1057#1072#1084#1086#1075#1077#1085'. '#1082#1083#1102#1095
    TabOrder = 7
    OnClick = RadioButtonGenerKeyClick
  end
  object ButtonKasiskiTest: TButton
    Left = 288
    Top = 366
    Width = 75
    Height = 25
    Caption = 'Kasiski Test'
    TabOrder = 8
    OnClick = ButtonKasiskiTestClick
  end
  object ButtonOpen: TButton
    Left = 8
    Top = 236
    Width = 185
    Height = 25
    Caption = 'Open'
    TabOrder = 9
    OnClick = ButtonOpenClick
  end
  object ButtonSave: TButton
    Left = 240
    Top = 239
    Width = 195
    Height = 25
    Caption = 'Save'
    TabOrder = 10
    OnClick = ButtonSaveClick
  end
  object MemoGCD: TMemo
    Left = 480
    Top = 253
    Width = 185
    Height = 221
    Lines.Strings = (
      'MemoGCP')
    TabOrder = 11
  end
  object Button1: TButton
    Left = 89
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Deciphring'
    TabOrder = 12
    OnClick = Button1Click
  end
  object OpenDialog: TOpenDialog
    Left = 160
    Top = 200
  end
  object SaveDialog: TSaveDialog
    Left = 336
    Top = 176
  end
end
