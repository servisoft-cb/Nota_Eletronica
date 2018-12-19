object frmNFeDestinadas: TfrmNFeDestinadas
  Left = 141
  Top = 87
  BorderStyle = bsDialog
  Caption = 'Consulta de Notas Destinadas'
  ClientHeight = 393
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 4
    Width = 82
    Height = 13
    Caption = 'NF-e Consultada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 44
    Width = 80
    Height = 13
    Caption = 'Emissor da NF-e:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object cbIndNFe: TComboBox
    Left = 8
    Top = 19
    Width = 681
    Height = 21
    Hint = 'Informar o indicador de NF-e consultadas'
    BevelKind = bkFlat
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '0-Todas as NF-e;'
    Items.Strings = (
      '0-Todas as NF-e;'
      
        '1-Somente as NF-e que ainda n'#227'o tiveram manifesta'#231#227'o do destinat' +
        #225'rio '
      
        '2-Idem anterior, incluindo as NF-e que tamb'#233'm n'#227'o tiveram a Ci'#234'n' +
        'cia da Opera'#231#227'o.')
  end
  object cbIndEmi: TComboBox
    Left = 8
    Top = 61
    Width = 681
    Height = 21
    Hint = 'Informar o indicador do Emitente'
    BevelKind = bkFlat
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '0-Todos os Emitentes / Remetentes;'
    Items.Strings = (
      '0-Todos os Emitentes / Remetentes;'
      
        '1-Somente as NF-e emitidas por emissores / remetentes que n'#227'o te' +
        'nham a mesma raiz do CNPJ do destinat'#225'rio;')
  end
  object btnPesquisar: TButton
    Left = 537
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnPesquisarClick
  end
  object RzDBGrid1: TRzDBGrid
    Left = 8
    Top = 128
    Width = 681
    Height = 225
    DataSource = dsNFeDestinadas
    DefaultDrawing = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RzDBGrid1DblClick
    FrameVisible = True
    Columns = <
      item
        Expanded = False
        FieldName = 'chNFe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoOperacao'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vNF'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xNome'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dEmi'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dhRecbto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SituacaoNFe'
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SituacaoManDest'
        Width = 218
        Visible = True
      end>
  end
  object btnContinuacao: TButton
    Left = 614
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Continua'#231#227'o'
    Enabled = False
    TabOrder = 3
    OnClick = btnContinuacaoClick
  end
  object btnSelecionar: TButton
    Left = 536
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    Enabled = False
    ModalResult = 1
    TabOrder = 5
    OnClick = btnSelecionarClick
  end
  object btnCancelar: TButton
    Left = 614
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 6
  end
  object xtrNFeDestinadas: TXMLTransformProvider
    Left = 508
    Top = 208
  end
  object cdsNFeDestinadas: TClientDataSet
    Aggregates = <>
    Filter = 'NSU>0'
    Filtered = True
    Params = <>
    ProviderName = 'xtrNFeDestinadas'
    OnCalcFields = cdsNFeDestinadasCalcFields
    Left = 508
    Top = 256
    object cdsNFeDestinadasNSU: TIntegerField
      FieldName = 'NSU'
    end
    object cdsNFeDestinadaschNFe: TStringField
      DisplayLabel = 'Chave NFe'
      FieldName = 'chNFe'
      Size = 44
    end
    object cdsNFeDestinadasxNome: TStringField
      DisplayLabel = 'Nome do Emitente'
      FieldName = 'xNome'
      Size = 60
    end
    object cdsNFeDestinadasCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;0;_'
      Size = 14
    end
    object cdsNFeDestinadasCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;0;_'
      Size = 14
    end
    object cdsNFeDestinadasIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsNFeDestinadasdEmi: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'dEmi'
    end
    object cdsNFeDestinadastpNF: TIntegerField
      FieldName = 'tpNF'
    end
    object cdsNFeDestinadasvNF: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vNF'
      DisplayFormat = 'R$ #,0.00'
    end
    object cdsNFeDestinadasdigVal: TStringField
      FieldName = 'digVal'
      Size = 28
    end
    object cdsNFeDestinadasdhRecbto: TDateTimeField
      DisplayLabel = 'Data Recebimento'
      FieldName = 'dhRecbto'
    end
    object cdsNFeDestinadascSitNFe: TIntegerField
      FieldName = 'cSitNFe'
    end
    object cdsNFeDestinadascSitConf: TIntegerField
      FieldName = 'cSitConf'
    end
    object cdsNFeDestinadasSituacaoNFe: TStringField
      DisplayLabel = 'Situa'#231#227'o da NFe'
      FieldKind = fkCalculated
      FieldName = 'SituacaoNFe'
      Size = 50
      Calculated = True
    end
    object cdsNFeDestinadasSituacaoManDest: TStringField
      DisplayLabel = 'Situa'#231#227'o da Manifesta'#231#227'o do Destinat'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'SituacaoManDest'
      Size = 50
      Calculated = True
    end
    object cdsNFeDestinadasTipoOperacao: TStringField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'TipoOperacao'
      Size = 10
      Calculated = True
    end
  end
  object dsNFeDestinadas: TDataSource
    DataSet = cdsNFeDestinadas
    Left = 508
    Top = 304
  end
end
