object Form3: TForm3
  Left = 197
  Top = 115
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1084#1072#1085#1076' '#1082#1086#1085#1090#1077#1082#1089#1090#1085#1086#1075#1086' '#1084#1077#1085#1102
  ClientHeight = 105
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 233
    Height = 13
    Caption = #1048#1084#1103' '#1087#1091#1085#1082#1090#1072' '#1084#1077#1085#1102' ('#1090#1086#1083#1100#1082#1086' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1077' '#1073#1091#1082#1074#1099'):'
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 121
    Height = 13
    Caption = #1042#1099#1087#1086#1083#1085#1103#1077#1084#1072#1103' '#1082#1086#1084#1072#1085#1076#1072':'
  end
  object Label3: TLabel
    Left = 0
    Top = 40
    Width = 101
    Height = 13
    Caption = #1058#1077#1082#1089#1090' '#1087#1091#1085#1082#1090#1072' '#1084#1077#1085#1102':'
  end
  object Edit1: TEdit
    Left = 0
    Top = 16
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 240
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 240
    Top = 48
    Width = 193
    Height = 25
    Caption = #1054#1073#1079#1086#1088'...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 0
    Top = 80
    Width = 433
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 0
    Top = 56
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 72
  end
end
