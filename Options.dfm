object Form4: TForm4
  Left = 493
  Top = 398
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 137
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 91
    Height = 13
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = #1055#1088#1086#1074#1077#1088#1103#1090#1100' '#1076#1080#1089#1082#1080':'
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 8
    Top = 48
    Width = 96
    Height = 13
    Caption = #1040#1082#1090#1080#1074#1085#1072#1103' '#1074#1082#1083#1072#1076#1082#1072':'
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 8
    Width = 201
    Height = 89
    Caption = #1048#1085#1090#1077#1075#1088#1072#1094#1080#1103
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label3: TLabel
      Left = 48
      Top = 16
      Width = 71
      Height = 13
      Caption = #1053#1077' '#1086#1087#1088#1077#1076#1077#1083#1105#1085
    end
    object Button1: TButton
      Left = 8
      Top = 32
      Width = 185
      Height = 25
      Caption = #1048#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1089#1080#1089#1090#1077#1084#1091
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 56
      Width = 185
      Height = 25
      Caption = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1089#1080#1089#1090#1077#1084#1099
      Enabled = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 64
    Width = 129
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 1
    Text = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
    Items.Strings = (
      #1042#1088#1091#1095#1085#1091#1102
      #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1080#1089#1082#1072)
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 88
    Width = 129
    Height = 33
    Caption = #1041#1099#1089#1090#1088#1086#1077' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
    TabOrder = 2
    WordWrap = True
    OnClick = CheckBox1Click
  end
  object Button3: TButton
    Left = 192
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button4Click
  end
end
