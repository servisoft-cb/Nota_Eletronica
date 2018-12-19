object frmMensagens: TfrmMensagens
  Left = 360
  Top = 202
  BorderStyle = bsDialog
  Caption = 'Cadastro de mensagens'
  ClientHeight = 392
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dgMensagens: TDBGrid
    Left = 8
    Top = 40
    Width = 545
    Height = 313
    DataSource = dsMensagens
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENSAGEM'
        Width = 467
        Visible = True
      end>
  end
  object btnOk: TButton
    Left = 398
    Top = 360
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancelar: TButton
    Left = 478
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object dbnMensagens: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = dsMensagens
    TabOrder = 0
  end
  object sdsMensagens: TSQLDataSet
    CommandText = 'SELECT * FROM MENSAGENS_ERRO ORDER BY CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvNfe.scoNFE
    Left = 40
    Top = 24
    object sdsMensagensCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object sdsMensagensMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Required = True
      Size = 300
    end
  end
  object dspMensagens: TDataSetProvider
    DataSet = sdsMensagens
    Left = 40
    Top = 72
  end
  object cdsMensagens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMensagens'
    Left = 40
    Top = 120
    object cdsMensagensCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object cdsMensagensMENSAGEM: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MENSAGEM'
      Required = True
      Size = 300
    end
  end
  object dsMensagens: TDataSource
    DataSet = cdsMensagens
    Left = 40
    Top = 168
  end
end
