object Form5: TForm5
  Left = 385
  Top = 270
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1085#1072#1095#1086#1082
  ClientHeight = 129
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 32
    Width = 41
    Height = 13
    Caption = #1048#1085#1076#1077#1082#1089':'
  end
  object indexoficon: TLabel
    Left = 133
    Top = 32
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Bevel1: TBevel
    Left = 119
    Top = -1
    Width = 34
    Height = 34
    Style = bsRaised
  end
  object Bevel2: TBevel
    Left = 128
    Top = 24
    Width = 17
    Height = 65
  end
  object Label2: TLabel
    Left = 0
    Top = 88
    Width = 194
    Height = 39
    Caption = 
      #1042#1085#1080#1084#1072#1085#1080#1077'! '#1055#1088#1080' '#1074#1099#1073#1086#1088#1077' '#1079#1085#1072#1095#1082#1072' '#1080#1079' exe '#1080#1083#1080' dll '#1092#1072#1081#1083' icon.ico '#1074' '#1082#1086#1088#1085#1077 +
      #1074#1086#1084' '#1082#1072#1090#1072#1083#1086#1075#1077' '#1076#1080#1089#1082#1072' '#1073#1091#1076#1077#1090' '#1087#1077#1088#1077#1079#1072#1087#1080#1089#1072#1085'!'
    WordWrap = True
  end
  object grab1: TIconGrabber2000X
    Left = 40
    Top = 0
    Width = 32
    Height = 32
    IconIndex = 0
  end
  object grab2: TIconGrabber2000X
    Left = 80
    Top = 0
    Width = 32
    Height = 32
    IconIndex = 0
  end
  object grab3: TIconGrabber2000X
    Left = 120
    Top = 0
    Width = 32
    Height = 32
    IconIndex = 0
  end
  object grab4: TIconGrabber2000X
    Left = 160
    Top = 0
    Width = 32
    Height = 32
    IconIndex = 0
  end
  object grab5: TIconGrabber2000X
    Left = 200
    Top = 0
    Width = 32
    Height = 32
    IconIndex = 0
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 33
    Height = 33
    Caption = '<<'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 0
    Width = 33
    Height = 33
    Caption = '>>'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 88
    Top = 64
    Width = 97
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1079#1085#1072#1095#1086#1082
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 88
    Width = 73
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 8
    OnClick = Button4Click
  end
end
