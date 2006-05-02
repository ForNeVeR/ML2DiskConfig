object Form1: TForm1
  Left = 274
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1080#1089#1082#1072' ML2'
  ClientHeight = 449
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2000X1: TLabel2000X
    Left = 8
    Top = 56
    Width = 129
    Height = 265
    Angle = 90
    TextStyle = tsRaised
    AutoSize = False
    Caption = 'ML2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -133
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2000X2: TLabel2000X
    Left = 0
    Top = 80
    Width = 32
    Height = 217
    Angle = 90
    TextStyle = tsRaised
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1080#1089#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 129
    Height = 49
    Caption = #1053#1072#1089#1090#1088#1072#1080#1074#1072#1077#1084#1099#1081' '#1076#1080#1089#1082
    TabOrder = 0
    object Button1: TButton
      Left = 56
      Top = 16
      Width = 65
      Height = 21
      Caption = #1054#1050
      TabOrder = 1
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 16
      Width = 41
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 144
    Top = 8
    Width = 401
    Height = 433
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
    TabOrder = 5
    object PageControl1: TPageControl
      Left = 8
      Top = 16
      Width = 385
      Height = 409
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1042#1088#1091#1095#1085#1091#1102
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 276
          Height = 13
          Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1092#1072#1081#1083#1072' autorun.inf '#1085#1072#1089#1090#1088#1072#1080#1074#1072#1077#1084#1086#1075#1086' '#1076#1080#1089#1082#1072':'
        end
        object Memo1: TMemo
          Left = 8
          Top = 24
          Width = 361
          Height = 321
          Enabled = False
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
        object Button3: TButton
          Left = 192
          Top = 352
          Width = 177
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          Enabled = False
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button5: TButton
          Left = 8
          Top = 352
          Width = 177
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Enabled = False
          TabOrder = 1
          OnClick = Button5Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 8
          Top = 8
          Width = 361
          Height = 105
          Caption = #1047#1085#1072#1095#1086#1082
          TabOrder = 0
          object Image1: TImage
            Left = 16
            Top = 24
            Width = 32
            Height = 32
            Proportional = True
          end
          object Bevel1: TBevel
            Left = 8
            Top = 16
            Width = 50
            Height = 50
          end
          object Label2: TLabel
            Left = 104
            Top = 16
            Width = 249
            Height = 49
            AutoSize = False
            WordWrap = True
          end
          object Label4: TLabel
            Left = 64
            Top = 16
            Width = 32
            Height = 13
            Caption = #1060#1072#1081#1083':'
          end
          object Button2: TButton
            Left = 8
            Top = 72
            Width = 345
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
            Enabled = False
            TabOrder = 0
            OnClick = Button2Click
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 120
          Width = 361
          Height = 105
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1091#1089#1082#1072#1077#1084#1099#1081' '#1092#1072#1081#1083
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 345
            Height = 49
            AutoSize = False
            WordWrap = True
          end
          object Button4: TButton
            Left = 8
            Top = 72
            Width = 345
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
            Enabled = False
            TabOrder = 0
            OnClick = Button4Click
          end
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 232
          Width = 361
          Height = 113
          Caption = #1050#1086#1084#1072#1085#1076#1099' '#1082#1086#1085#1090#1077#1082#1089#1090#1085#1086#1075#1086' '#1084#1077#1085#1102
          TabOrder = 2
          object Memo2: TMemo
            Left = 8
            Top = 16
            Width = 345
            Height = 57
            Enabled = False
            ScrollBars = ssBoth
            TabOrder = 0
            WordWrap = False
          end
          object Button10: TButton
            Left = 8
            Top = 80
            Width = 345
            Height = 25
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100'...'
            Enabled = False
            TabOrder = 1
            OnClick = Button10Click
          end
        end
        object Button6: TButton
          Left = 8
          Top = 352
          Width = 177
          Height = 25
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Enabled = False
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button11: TButton
          Left = 192
          Top = 352
          Width = 179
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083' autorun.inf'
          Enabled = False
          TabOrder = 4
          OnClick = Button11Click
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1080#1089#1082#1072
        ImageIndex = 2
        object Label5: TLabel
          Left = 8
          Top = 16
          Width = 35
          Height = 13
          Caption = #1052#1077#1090#1082#1072':'
        end
        object Label6: TLabel
          Left = 8
          Top = 336
          Width = 3
          Height = 13
        end
        object Edit1: TEdit
          Left = 48
          Top = 8
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object Button13: TButton
          Left = 8
          Top = 352
          Width = 361
          Height = 25
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Enabled = False
          TabOrder = 1
          OnClick = Button13Click
        end
      end
    end
  end
  object Button12: TButton
    Left = 3
    Top = 328
    Width = 137
    Height = 25
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
    TabOrder = 1
    OnClick = Button12Click
  end
  object Button7: TButton
    Left = 3
    Top = 352
    Width = 137
    Height = 25
    Caption = #1057#1087#1088#1072#1074#1082#1072
    TabOrder = 2
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 3
    Top = 376
    Width = 137
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
    TabOrder = 3
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 3
    Top = 416
    Width = 137
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = Button9Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #1047#1085#1072#1095#1082#1080' (.ico)|*.ico|'#1048#1089#1087#1086#1083#1085#1103#1077#1084#1099#1077' '#1092#1072#1081#1083#1099' (.exe)|*.exe|'#1041#1080#1073#1083#1080#1086#1090#1077#1082#1080' (.' +
      'dll)|*.dll|'#1042#1089#1077' '#1092#1072#1081#1083#1099' '#1089#1086' '#1079#1085#1072#1095#1082#1072#1084#1080' (.ico, .exe, .dll)|*.ico;*.exe;' +
      '*.dll'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 64
    Top = 152
  end
  object XPManifest1: TXPManifest
    Left = 96
    Top = 152
  end
  object autodialog: TOpenDialog
    Filter = 
      #1048#1089#1087#1086#1083#1085#1080#1084#1099#1077' '#1092#1072#1081#1083#1099' (.exe, .com, .bat)|*.exe;*.com;*.bat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|' +
      '*.*'
    Left = 64
    Top = 184
  end
  object DiskInfo2000X1: TDiskInfo2000X
    Left = 96
    Top = 184
  end
end
