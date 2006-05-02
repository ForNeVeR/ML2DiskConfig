object CreateAutoRun: TCreateAutoRun
  Left = 326
  Top = 327
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
  ClientHeight = 138
  ClientWidth = 377
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
    Left = 8
    Top = 8
    Width = 361
    Height = 26
    Caption = 
      #1060#1072#1081#1083' autorun.inf '#1085#1072' '#1076#1080#1089#1082#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1085'. '#1056#1077#1082#1086#1084#1077#1085#1076#1091#1077#1090#1089#1103' '#1077#1075#1086' '#1089#1086#1079#1076#1072#1090#1100'. ' +
      #1048#1084#1103' '#1092#1072#1081#1083#1072':'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 361
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'C:\autorun.inf'
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 361
    Height = 33
    AutoSize = False
    Caption = 
      #1045#1089#1083#1080' '#1042#1099' '#1085#1077' '#1089#1086#1079#1076#1072#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1081' '#1092#1072#1081#1083', '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1073#1091#1076 +
      #1077#1090' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1072'. '#1057#1086#1079#1076#1072#1090#1100' '#1101#1090#1086#1090' '#1092#1072#1081#1083'?'
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 104
    Width = 75
    Height = 25
    Caption = #1044#1072
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = #1053#1077#1090
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkNo
  end
end
