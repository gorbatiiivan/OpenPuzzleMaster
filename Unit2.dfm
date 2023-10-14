object BackgroundsForm: TBackgroundsForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1083#1102#1073#1086#1081' '#1080#1079' '#1087#1086#1085#1088#1072#1074#1080#1074#1096#1091#1102#1089#1103' '#1074#1072#1084' '#1092#1086#1085
  ClientHeight = 611
  ClientWidth = 909
  Color = clBtnFace
  Constraints.MinHeight = 650
  Constraints.MinWidth = 925
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ShowHint = True
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 570
    Width = 909
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 282
      Height = 37
      Align = alLeft
      Caption = #1044#1083#1103' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1074' '#1089#1080#1083#1091' '#1085#1091#1078#1085#1086' '#1087#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1075#1088#1091'!!!'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Bevel1: TBevel
      Left = 720
      Top = 6
      Width = 18
      Height = 32
      Shape = bsRightLine
    end
    object Button1: TButton
      Left = 744
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 825
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
    object Button3: TButton
      Left = 632
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Button3'
      DropDownMenu = PopupMenu
      Style = bsSplitButton
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object ListView: TListView
    Left = 0
    Top = 0
    Width = 909
    Height = 570
    Align = alClient
    Columns = <>
    DoubleBuffered = True
    Groups = <
      item
        GroupID = 0
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        GroupID = 1
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end>
    LargeImages = ImageList
    GroupView = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnSelectItem = ListViewSelectItem
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    BkColor = clWhite
    Height = 150
    Width = 250
    Left = 872
    Top = 8
  end
  object OpenBackgroundDialog: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.bmp;*.png;*.tif;*.tiff)|*.jpg;*.jpeg;*.bmp;*' +
      '.png;*.tif;*.tiff|JPEG Image File (*.jpg)|*.jpg|JPEG Image File ' +
      '(*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Portable Network Graphics(' +
      '*.png)|*.png|TIFF Images|*.tif|TIFF Images|*.tiff'
    Left = 824
    Top = 8
  end
  object PopupMenu: TPopupMenu
    Left = 784
    Top = 8
    object Opendir1: TMenuItem
      Caption = 'Open dir'
      OnClick = Opendir1Click
    end
  end
end
