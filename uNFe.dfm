object Form1: TForm1
  Left = 359
  Top = 12
  Width = 892
  Height = 730
  BorderWidth = 5
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagOperacoes: TPageControl
    Left = 0
    Top = 0
    Width = 874
    Height = 689
    ActivePage = tabNFeOp
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object tabNFeOp: TTabSheet
      Caption = 'NF-e'
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 866
        Height = 661
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Gerais'
          object Label1: TLabel
            Left = 16
            Top = 72
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota Nro'
          end
          object Label2: TLabel
            Left = 32
            Top = 96
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ'
          end
          object Label3: TLabel
            Left = 49
            Top = 120
            Width = 10
            Height = 13
            Alignment = taRightJustify
            Caption = 'IE'
          end
          object Label4: TLabel
            Left = 3
            Top = 144
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt. Emiss'#227'o'
          end
          object Label5: TLabel
            Left = 13
            Top = 168
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt. Sa'#237'da'
          end
          object Label11: TLabel
            Left = 205
            Top = 72
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF'
          end
          object Label14: TLabel
            Left = 184
            Top = 96
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = 'Modelo'
          end
          object Label15: TLabel
            Left = 195
            Top = 120
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'S'#233'rie'
          end
          object Label26: TLabel
            Left = 174
            Top = 168
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nro. Corr.'
          end
          object Button1: TButton
            Left = 32
            Top = 3
            Width = 75
            Height = 25
            Caption = 'XML'
            TabOrder = 0
            OnClick = Button1Click
          end
          object BitBtn1: TBitBtn
            Left = 32
            Top = 32
            Width = 75
            Height = 25
            Caption = 'TXT'
            TabOrder = 2
            OnClick = BitBtn1Click
          end
          object edNF: TEdit
            Left = 64
            Top = 72
            Width = 97
            Height = 21
            MaxLength = 8
            TabOrder = 3
            Text = '1'
          end
          object edCNPJ: TEdit
            Left = 64
            Top = 96
            Width = 97
            Height = 21
            MaxLength = 14
            TabOrder = 5
            Text = '94161890000167'
          end
          object edIE: TEdit
            Left = 64
            Top = 120
            Width = 97
            Height = 21
            MaxLength = 10
            TabOrder = 7
            Text = '0860155404'
          end
          object edDtEmissao: TDateTimePicker
            Left = 64
            Top = 144
            Width = 96
            Height = 21
            Date = 39999.853847951390000000
            Time = 39999.853847951390000000
            TabOrder = 9
          end
          object edDtSaida: TDateTimePicker
            Left = 64
            Top = 168
            Width = 96
            Height = 21
            Date = 39999.853847951390000000
            Time = 39999.853847951390000000
            TabOrder = 10
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 205
            Width = 409
            Height = 116
            Caption = 'Envio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            object Label6: TLabel
              Left = 51
              Top = 24
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'Recibo:'
            end
            object Label7: TLabel
              Left = 9
              Top = 40
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nro. Protocolo:'
            end
            object Label8: TLabel
              Left = 10
              Top = 56
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Chave Acesso:'
            end
            object lbRecibo: TLabel
              Left = 98
              Top = 24
              Width = 300
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbNroProtocolo: TLabel
              Left = 98
              Top = 40
              Width = 300
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object btEnviar: TButton
              Left = 323
              Top = 80
              Width = 75
              Height = 25
              Caption = '&Enviar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = btEnviarClick
            end
            object btnEnviarNFe: TButton
              Left = 128
              Top = 80
              Width = 92
              Height = 25
              Caption = 'EnviarNFe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btnEnviarNFeClick
            end
            object btnBuscarStatus: TButton
              Left = 222
              Top = 80
              Width = 92
              Height = 25
              Caption = 'BuscarStatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btnBuscarStatusClick
            end
            object lbChaveAcesso: TEdit
              Left = 98
              Top = 56
              Width = 300
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              Text = 'lbChaveAcesso'
            end
            object Button19: TButton
              Left = 8
              Top = 80
              Width = 89
              Height = 25
              Caption = 'EnviarNfeSinc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = Button19Click
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 328
            Width = 406
            Height = 153
            Caption = 'Cancelamento/Carta de Corre'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
            object Label10: TLabel
              Left = 9
              Top = 96
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nro. Protocolo:'
            end
            object lbNroProtocoloCancelamento: TLabel
              Left = 98
              Top = 96
              Width = 300
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 23
              Top = 24
              Width = 73
              Height = 13
              Caption = 'Justificativa:'
            end
            object btCancelar: TButton
              Left = 160
              Top = 120
              Width = 118
              Height = 25
              Caption = '&Cancelar NFe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btCancelarClick
            end
            object meJustificativa: TMemo
              Left = 98
              Top = 24
              Width = 299
              Height = 65
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Lines.Strings = (
                'meJustificativa')
              ParentFont = False
              TabOrder = 0
            end
            object Button11: TButton
              Left = 278
              Top = 120
              Width = 120
              Height = 25
              Caption = 'Carta de Corre'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = Button11Click
            end
          end
          object Button2: TButton
            Left = 421
            Top = 269
            Width = 120
            Height = 25
            Caption = 'Verifica WebService'
            TabOrder = 14
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 541
            Top = 269
            Width = 120
            Height = 25
            Caption = 'Verifica Contingencia'
            TabOrder = 15
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 661
            Top = 269
            Width = 120
            Height = 25
            Caption = 'Conectado '#224' Internet'
            TabOrder = 16
            OnClick = Button4Click
          end
          object Memo1: TMemo
            Left = 420
            Top = 8
            Width = 361
            Height = 257
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object GroupBox3: TGroupBox
            Left = 415
            Top = 381
            Width = 366
            Height = 49
            Caption = 'Chave'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 24
            object Label12: TLabel
              Left = 98
              Top = 96
              Width = 300
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 15
              Top = 24
              Width = 68
              Height = 13
              Caption = 'Chave NFe:'
            end
            object lbChaveNfe: TLabel
              Left = 88
              Top = 24
              Width = 269
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object Button5: TButton
            Left = 421
            Top = 295
            Width = 120
            Height = 25
            Caption = 'Gera Chave NFe'
            TabOrder = 17
            OnClick = Button5Click
          end
          object edUF: TEdit
            Left = 224
            Top = 72
            Width = 97
            Height = 21
            MaxLength = 6
            TabOrder = 4
            Text = '43'
          end
          object edModelo: TEdit
            Left = 224
            Top = 96
            Width = 97
            Height = 21
            MaxLength = 6
            TabOrder = 6
            Text = '55'
          end
          object edSerie: TEdit
            Left = 224
            Top = 120
            Width = 97
            Height = 21
            MaxLength = 6
            TabOrder = 8
            Text = '1'
          end
          object GroupBox4: TGroupBox
            Left = 415
            Top = 432
            Width = 366
            Height = 49
            Caption = #39
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 25
            object Label16: TLabel
              Left = 98
              Top = 96
              Width = 300
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 15
              Top = 24
              Width = 67
              Height = 13
              Caption = 'C'#243'd.Barras:'
            end
            object lbCodBarras: TLabel
              Left = 88
              Top = 24
              Width = 269
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object Button6: TButton
            Left = 541
            Top = 295
            Width = 120
            Height = 25
            Caption = 'Gera C'#243'd. Barras'
            TabOrder = 18
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 661
            Top = 295
            Width = 120
            Height = 25
            Caption = 'Consultar NFe'
            TabOrder = 19
            OnClick = Button7Click
          end
          object Button8: TButton
            Left = 421
            Top = 320
            Width = 120
            Height = 25
            Caption = 'Converter XML'
            TabOrder = 20
            OnClick = Button8Click
          end
          object GroupBox5: TGroupBox
            Left = 8
            Top = 489
            Width = 773
            Height = 129
            Caption = 'Inutiliza'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 26
            object Label18: TLabel
              Left = 9
              Top = 96
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nro. Protocolo:'
            end
            object lbNroProtocoloInutil: TLabel
              Left = 98
              Top = 96
              Width = 295
              Height = 13
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 23
              Top = 24
              Width = 73
              Height = 13
              Caption = 'Justificativa:'
            end
            object Label19: TLabel
              Left = 426
              Top = 24
              Width = 17
              Height = 13
              Alignment = taRightJustify
              Caption = 'UF'
            end
            object Label21: TLabel
              Left = 401
              Top = 48
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'Modelo'
            end
            object Label22: TLabel
              Left = 413
              Top = 72
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'S'#233'rie'
            end
            object Label23: TLabel
              Left = 580
              Top = 24
              Width = 23
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ano'
            end
            object Label24: TLabel
              Left = 564
              Top = 48
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nfe Ini'
            end
            object Label25: TLabel
              Left = 559
              Top = 72
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nfe Fim'
            end
            object Button9: TButton
              Left = 683
              Top = 96
              Width = 75
              Height = 25
              Caption = '&Inutilizar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = Button9Click
            end
            object meJustificativaI: TMemo
              Left = 98
              Top = 24
              Width = 299
              Height = 65
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Lines.Strings = (
                'meJustificativa')
              ParentFont = False
              TabOrder = 0
            end
            object edUfI: TEdit
              Left = 448
              Top = 24
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 1
              Text = '43'
            end
            object edModeloI: TEdit
              Left = 448
              Top = 48
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 3
              Text = '55'
            end
            object edSerieI: TEdit
              Left = 448
              Top = 72
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 5
              Text = '0'
            end
            object edAnoI: TEdit
              Left = 608
              Top = 24
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 2
              Text = '2010'
            end
            object edNfeIniI: TEdit
              Left = 608
              Top = 48
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 4
              Text = '0'
            end
            object edNfeFimI: TEdit
              Left = 608
              Top = 72
              Width = 97
              Height = 21
              MaxLength = 6
              TabOrder = 6
              Text = '0'
            end
          end
          object Button10: TButton
            Left = 541
            Top = 320
            Width = 120
            Height = 25
            Caption = 'Gerar DANFE'
            TabOrder = 21
            OnClick = Button10Click
          end
          object edNroCorrecao: TEdit
            Left = 224
            Top = 168
            Width = 97
            Height = 21
            TabOrder = 11
            Text = '1'
          end
          object Button17: TButton
            Left = 421
            Top = 345
            Width = 120
            Height = 25
            Caption = 'Importar NFe Fornec.'
            TabOrder = 23
            OnClick = Button17Click
          end
          object chkComErro: TCheckBox
            Left = 328
            Top = 168
            Width = 73
            Height = 17
            Caption = 'Com Erro'
            TabOrder = 12
          end
          object Button20: TButton
            Left = 152
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Button20'
            TabOrder = 27
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Consultar NFe'
          ImageIndex = 1
          object Label27: TLabel
            Left = 8
            Top = 8
            Width = 31
            Height = 13
            Caption = 'Chave'
          end
          object labConsRetorno: TLabel
            Left = 424
            Top = 32
            Width = 51
            Height = 13
            Caption = '< retorno >'
          end
          object edtConsChave: TEdit
            Left = 8
            Top = 24
            Width = 321
            Height = 21
            TabOrder = 1
            Text = '43120792758762000170550010001100301588752741'
          end
          object Button12: TButton
            Left = 336
            Top = 20
            Width = 75
            Height = 25
            Caption = 'Consultar'
            TabOrder = 0
            OnClick = Button12Click
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 56
            Width = 777
            Height = 120
            DataSource = dsConsultaNFe
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBGrid2: TDBGrid
            Left = 7
            Top = 184
            Width = 777
            Height = 120
            DataSource = dsNFeProtocolo
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBGrid3: TDBGrid
            Left = 7
            Top = 312
            Width = 777
            Height = 120
            DataSource = dsNFeEventos
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBGrid4: TDBGrid
            Left = 7
            Top = 440
            Width = 777
            Height = 120
            DataSource = dsNFeCancelamento
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object chkConsSalvarXML: TCheckBox
            Left = 584
            Top = 24
            Width = 145
            Height = 17
            Caption = 'Salvar XML no C:\'
            TabOrder = 2
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Enviar Email '
          ImageIndex = 2
          DesignSize = (
            858
            633)
          object GroupBox7: TGroupBox
            Left = 8
            Top = 7
            Width = 840
            Height = 45
            Anchors = [akLeft, akTop, akRight]
            Caption = 
              ' Destinat'#225'rio do e-mail, separar os e-mails com ; (ponto e v'#237'rgu' +
              'la) ou , (v'#237'rgula) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              840
              45)
            object edEmailDestinatario: TEdit
              Left = 11
              Top = 18
              Width = 821
              Height = 19
              Hint = 'Informar os e-mails dos destinat'#225'rios'
              Anchors = [akLeft, akTop, akRight]
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 53
            Width = 840
            Height = 44
            Anchors = [akLeft, akTop, akRight]
            Caption = 
              ' BCC (c'#243'pia oculta), separar os e-mails com ; (ponto e v'#237'rgula) ' +
              'ou , (v'#237'rgula)  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            DesignSize = (
              840
              44)
            object edEmailBCC: TEdit
              Left = 11
              Top = 18
              Width = 821
              Height = 19
              Hint = 'Informar os e-mails dos destinat'#225'rios que ser'#227'o copiados em BCC'
              Anchors = [akLeft, akTop, akRight]
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object GroupBox9: TGroupBox
            Left = 8
            Top = 98
            Width = 840
            Height = 177
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Assunto/Mensagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            DesignSize = (
              840
              177)
            object edAssunto: TEdit
              Left = 8
              Top = 16
              Width = 697
              Height = 19
              Hint = 'Informar o assunto da mensagem'
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object edMensagem: TEdit
              Left = 8
              Top = 40
              Width = 824
              Height = 129
              Hint = 'Informar o assunto da mensagem'
              Anchors = [akLeft, akTop, akRight]
              AutoSize = False
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object GroupBox10: TGroupBox
            Left = 9
            Top = 275
            Width = 840
            Height = 106
            Anchors = [akLeft, akTop, akRight]
            Caption = ' Anexos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            DesignSize = (
              840
              106)
            object Button13: TButton
              Left = 8
              Top = 72
              Width = 89
              Height = 25
              Caption = '&Adicionar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button13Click
            end
            object ListBoxAnexos: TListBox
              Left = 8
              Top = 16
              Width = 824
              Height = 50
              Anchors = [akLeft, akTop, akRight]
              Color = cl3DLight
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
            end
            object Button14: TButton
              Left = 102
              Top = 72
              Width = 75
              Height = 25
              Caption = '&Remover'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = Button14Click
            end
            object Button15: TButton
              Left = 182
              Top = 72
              Width = 75
              Height = 25
              Caption = '&Limpar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = Button15Click
            end
          end
          object Button16: TButton
            Left = 8
            Top = 384
            Width = 97
            Height = 25
            Caption = '&Enviar e-mail'
            TabOrder = 4
            OnClick = Button16Click
          end
        end
        object tabManifestos: TTabSheet
          Caption = 'Manifestos'
          ImageIndex = 3
          object lblManChave: TLabel
            Left = 8
            Top = 48
            Width = 31
            Height = 13
            Caption = 'Chave'
          end
          object lblCNPJDest: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ'
          end
          object Label29: TLabel
            Left = 8
            Top = 88
            Width = 34
            Height = 13
            Caption = 'Evento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 8
            Top = 129
            Width = 55
            Height = 13
            Caption = 'Justificativa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblManProtocolo: TLabel
            Left = 8
            Top = 216
            Width = 51
            Height = 13
            Caption = 'Protocolo: '
          end
          object lblManDataProtocolo: TLabel
            Left = 8
            Top = 232
            Width = 77
            Height = 13
            Caption = 'Data Protocolo: '
          end
          object btnManBuscarChave: TButton
            Left = 336
            Top = 64
            Width = 137
            Height = 25
            Caption = 'Buscar Chave NFe'
            TabOrder = 2
            OnClick = btnManBuscarChaveClick
          end
          object edtManChave: TEdit
            Left = 8
            Top = 64
            Width = 321
            Height = 21
            TabOrder = 1
          end
          object edtCNPJDest: TEdit
            Left = 8
            Top = 24
            Width = 97
            Height = 21
            MaxLength = 14
            TabOrder = 0
            Text = '06698546000144'
          end
          object cbManEvento: TComboBox
            Left = 8
            Top = 104
            Width = 321
            Height = 21
            Hint = 'Informar o tipo do Evento'
            BevelKind = bkFlat
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Text = '210200 - Confirma'#231#227'o da Opera'#231#227'o'
            Items.Strings = (
              '210200 - Confirma'#231#227'o da Opera'#231#227'o'
              '210210 - Ci'#234'ncia da Opera'#231#227'o'
              '210220 - Desconhecimento da Opera'#231#227'o'
              '210240 - Opera'#231#227'o n'#227'o Realizada')
          end
          object edtManJustificativa: TEdit
            Left = 8
            Top = 146
            Width = 465
            Height = 19
            Hint = 'Informar a justificativa da Opera'#231#227'o n'#227'o realizada'
            Ctl3D = False
            MaxLength = 255
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object btnEnviarManifestacao: TButton
            Left = 336
            Top = 172
            Width = 137
            Height = 25
            Caption = 'Enviar Manifesta'#231#227'o'
            TabOrder = 5
            OnClick = btnEnviarManifestacaoClick
          end
          object mmoManXML: TMemo
            Left = 8
            Top = 256
            Width = 769
            Height = 353
            ScrollBars = ssBoth
            TabOrder = 6
          end
        end
        object tabConsultaCadastro: TTabSheet
          Caption = 'Consultar Cadastro'
          ImageIndex = 4
          object lblCadArgumento: TLabel
            Left = 5
            Top = 13
            Width = 100
            Height = 13
            Caption = 'Argumento Pesquisa:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbCadTpArg: TComboBox
            Left = 108
            Top = 11
            Width = 61
            Height = 21
            Hint = 
              'Selecione o tipo de arrgumento: IE, CNPJ ou CPF, nem todas as UF' +
              ' oferecem consulta por CPF.'
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 1
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = 'CNPJ'
            Items.Strings = (
              'IE'
              'CNPJ'
              'CPF')
          end
          object edCadArgumento: TEdit
            Left = 175
            Top = 12
            Width = 272
            Height = 19
            Hint = 'Informe o argumento de pesquisa, sem formata'#231#227'o.'
            Ctl3D = False
            MaxLength = 14
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = '06698546000144'
          end
          object dgCadConsulta: TDBGrid
            Left = 4
            Top = 40
            Width = 765
            Height = 577
            DataSource = dsConsultaCadastro
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object btnCadConsultar: TButton
            Left = 452
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Consultar'
            TabOrder = 2
            OnClick = btnCadConsultarClick
          end
        end
        object tabDownloadNFe: TTabSheet
          Caption = 'Download NFe'
          ImageIndex = 5
          object Label28: TLabel
            Left = 8
            Top = 12
            Width = 89
            Height = 13
            Caption = 'CNPJ Destinat'#225'rio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 22
            Top = 36
            Width = 75
            Height = 13
            Caption = 'Chave da NF-e:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edDNFeCNPJDest: TEdit
            Left = 101
            Top = 8
            Width = 175
            Height = 19
            Hint = 'Informar o CNPJ do Destinat'#225'rio'
            Ctl3D = False
            MaxLength = 44
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = '06698546000144'
          end
          object edDNFeChaveNFe: TEdit
            Left = 102
            Top = 33
            Width = 350
            Height = 19
            Hint = 'Informar a chave de Acesso da NF-e objeto do download'
            Ctl3D = False
            MaxLength = 255
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object btnBaixar: TButton
            Left = 597
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Baixar'
            TabOrder = 2
            OnClick = btnBaixarClick
          end
          object mmoDNFe: TMemo
            Left = 8
            Top = 64
            Width = 769
            Height = 545
            ScrollBars = ssBoth
            TabOrder = 4
            WordWrap = False
          end
          object btnDNfeBuscarChave: TButton
            Left = 456
            Top = 32
            Width = 137
            Height = 25
            Caption = 'Buscar Chave NFe'
            TabOrder = 1
            OnClick = btnDNfeBuscarChaveClick
          end
        end
        object tabNFCe: TTabSheet
          Caption = 'NFC-e'
          ImageIndex = 8
          object lblNFCeCNPJ: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object btnGerarQRCode: TButton
            Left = 8
            Top = 464
            Width = 75
            Height = 25
            Caption = 'QRCode'
            TabOrder = 0
            OnClick = btnGerarQRCodeClick
          end
          object Panel1: TPanel
            Left = 8
            Top = 48
            Width = 449
            Height = 409
            BevelOuter = bvLowered
            BorderWidth = 5
            TabOrder = 1
            object imgQRCode: TImage
              Left = 6
              Top = 6
              Width = 437
              Height = 397
              Align = alClient
              Proportional = True
              Stretch = True
            end
          end
          object edtNFCeCPNJ: TEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 2
            Text = '05874179000120'
          end
        end
        object tsDFe: TTabSheet
          Caption = 'DF-e'
          ImageIndex = 9
          object lblDFeCnpj: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object lblDFeUf: TLabel
            Left = 136
            Top = 8
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object lblDFeUltNsuReceb: TLabel
            Left = 192
            Top = 8
            Width = 80
            Height = 13
            Caption = 'Ult. NSU Receb.'
          end
          object lblDFeNSU: TLabel
            Left = 8
            Top = 232
            Width = 29
            Height = 13
            Caption = 'NSU: '
          end
          object edtDFeCnpj: TEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '20041226000148'
          end
          object edtDFeUf: TEdit
            Left = 136
            Top = 24
            Width = 49
            Height = 21
            TabOrder = 1
            Text = '43'
          end
          object edtDFeUltNsuReceb: TEdit
            Left = 192
            Top = 24
            Width = 105
            Height = 21
            TabOrder = 2
            Text = '0'
          end
          object DBGrid5: TDBGrid
            Left = 8
            Top = 48
            Width = 777
            Height = 177
            DataSource = dsNotaDestinada
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object btnDFeDistNsu: TButton
            Left = 304
            Top = 19
            Width = 113
            Height = 25
            Caption = 'Consultar NSU'
            TabOrder = 4
            OnClick = btnDFeDistNsuClick
          end
          object mmoDFeXML: TMemo
            Left = 8
            Top = 248
            Width = 777
            Height = 377
            ScrollBars = ssBoth
            TabOrder = 5
            WordWrap = False
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Integra'#231#227'o Cont'#225'bil'
          ImageIndex = 8
          object Label36: TLabel
            Left = 8
            Top = 8
            Width = 71
            Height = 13
            Caption = 'CNPJ Empresa'
          end
          object Label39: TLabel
            Left = 136
            Top = 8
            Width = 129
            Height = 13
            Caption = 'CNPJ Para Baixar as Notas'
          end
          object Label40: TLabel
            Left = 288
            Top = 8
            Width = 42
            Height = 13
            Caption = #218'lt. NSU'
          end
          object BitBtn2: TBitBtn
            Left = 16
            Top = 56
            Width = 75
            Height = 25
            Caption = 'BitBtn2'
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object edtCNPJContabil: TEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 1
            Text = '40372766072'
          end
          object edtCNPJBaixarXML: TEdit
            Left = 136
            Top = 24
            Width = 145
            Height = 21
            TabOrder = 2
            Text = '11844291000110'
          end
          object ceUltNSU: TCurrencyEdit
            Left = 285
            Top = 22
            Width = 121
            Height = 21
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            TabOrder = 3
          end
          object Memo2: TMemo
            Left = 8
            Top = 88
            Width = 745
            Height = 249
            Lines.Strings = (
              'Memo2')
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object BitBtn3: TBitBtn
            Left = 136
            Top = 56
            Width = 97
            Height = 25
            Caption = 'Descompacta'
            TabOrder = 5
            OnClick = BitBtn3Click
          end
          object Memo3: TMemo
            Left = 5
            Top = 342
            Width = 745
            Height = 249
            Lines.Strings = (
              'Memo2')
            ScrollBars = ssVertical
            TabOrder = 6
          end
        end
      end
    end
    object tabNFSeOp: TTabSheet
      Caption = 'NFS-e'
      ImageIndex = 1
      object pagNFSeEx: TPageControl
        Left = 0
        Top = 0
        Width = 866
        Height = 661
        ActivePage = tbNFSe
        Align = alClient
        TabOrder = 0
        object tbNFSe: TTabSheet
          Caption = 'NFS-e'
          ImageIndex = 6
          DesignSize = (
            858
            633)
          object lblNFSeCNPJ: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object lblNFSeLote: TLabel
            Left = 279
            Top = 8
            Width = 21
            Height = 13
            Caption = 'Lote'
          end
          object lblNFSeMunicipio: TLabel
            Left = 132
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Munic'#237'pio'
          end
          object lblNFSeNroNotas: TLabel
            Left = 404
            Top = 8
            Width = 48
            Height = 13
            Caption = 'Nro Notas'
          end
          object lblNFSeNroRps: TLabel
            Left = 341
            Top = 8
            Width = 36
            Height = 13
            Caption = 'NroRps'
          end
          object edtNFSeCNPJ: TEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '03647934000108'
          end
          object btnNFSeGerarLote: TButton
            Left = 8
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Gerar Lote'
            TabOrder = 6
            OnClick = btnNFSeGerarLoteClick
          end
          object btnNFSeEnviarLote: TButton
            Left = 100
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Enviar Lote'
            TabOrder = 7
            OnClick = btnNFSeEnviarLoteClick
          end
          object btnNFSeConsultarLote: TButton
            Left = 193
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Consultar Lote'
            TabOrder = 8
            OnClick = btnNFSeConsultarLoteClick
          end
          object btnNFSeCancelar: TButton
            Left = 286
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Cancelar NFSe'
            TabOrder = 9
            OnClick = btnNFSeCancelarClick
          end
          object mmoNFSeRetorno: TMemo
            Left = 8
            Top = 104
            Width = 843
            Height = 326
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              'mmoNFSeRetorno')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 12
          end
          object cbxNFSeMunicipio: TComboBox
            Left = 132
            Top = 24
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'Novo Hamburgo'
              'S'#227'o Leopoldo'
              'Campo Bom'
              'Porto Alegre'
              'Est'#226'ncia Velha')
          end
          object edtNFSeRetEnv: TEdit
            Left = 8
            Top = 80
            Width = 777
            Height = 21
            TabOrder = 11
            Text = 'edtNFSeRetEnv'
          end
          object btnConsutarNFSe: TButton
            Left = 380
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Consultar NFSe'
            TabOrder = 10
            OnClick = btnConsutarNFSeClick
          end
          object edtNFSeNroNotas: TSpinEdit
            Left = 404
            Top = 24
            Width = 57
            Height = 22
            MaxValue = 10000
            MinValue = 1
            TabOrder = 4
            Value = 1
          end
          object btnNFSeSalvarRetorno: TButton
            Left = 664
            Top = 432
            Width = 121
            Height = 25
            Caption = 'Salvar Retorno'
            TabOrder = 13
            OnClick = btnNFSeSalvarRetornoClick
          end
          object edtNFSeLote: TSpinEdit
            Left = 279
            Top = 24
            Width = 60
            Height = 22
            MaxValue = 100000
            MinValue = 1
            TabOrder = 2
            Value = 1
          end
          object edtNFSeNroRps: TSpinEdit
            Left = 341
            Top = 24
            Width = 60
            Height = 22
            MaxValue = 100000
            MinValue = 1
            TabOrder = 3
            Value = 1
          end
          object chkNFSeGerarComErro: TCheckBox
            Left = 466
            Top = 29
            Width = 127
            Height = 17
            Caption = 'Gerar NFSe com erro'
            TabOrder = 5
          end
          object lbxNFSeNotas: TListBox
            Left = 8
            Top = 464
            Width = 177
            Height = 155
            ItemHeight = 13
            TabOrder = 14
            OnClick = lbxNFSeNotasClick
          end
          object btnNFSeListarNotas: TButton
            Left = 8
            Top = 432
            Width = 75
            Height = 25
            Caption = 'Listar Notas'
            TabOrder = 15
            OnClick = btnNFSeListarNotasClick
          end
          object mmoNFSeRecupera: TMemo
            Left = 192
            Top = 464
            Width = 659
            Height = 158
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              'mmoNFSeRetorno')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 16
          end
          object btnObterNotaPNG: TButton
            Left = 472
            Top = 48
            Width = 90
            Height = 25
            Caption = 'Obter Nota PNG'
            TabOrder = 17
            OnClick = btnObterNotaPNGClick
          end
          object Button18: TButton
            Left = 564
            Top = 48
            Width = 85
            Height = 25
            Caption = 'Consultar RPS'
            TabOrder = 18
            OnClick = Button18Click
          end
          object btnNFSeGerarXML: TButton
            Left = 704
            Top = 48
            Width = 75
            Height = 25
            Caption = 'Gerar XML'
            TabOrder = 19
            OnClick = btnNFSeGerarXMLClick
          end
        end
        object tabNFSeToCds: TTabSheet
          Caption = 'NFSe para CDS'
          ImageIndex = 7
          DesignSize = (
            858
            633)
          object dbgNFSeToCds: TDBGrid
            Left = 8
            Top = 40
            Width = 845
            Height = 585
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dsNFSe
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object btnCarregarXML: TButton
            Left = 8
            Top = 8
            Width = 97
            Height = 25
            Caption = 'CarregarXML'
            TabOrder = 1
            OnClick = btnCarregarXMLClick
          end
        end
        object tabNFSeGeraXML: TTabSheet
          Caption = 'NFSe GeraXML'
          ImageIndex = 10
          DesignSize = (
            858
            633)
          object btnNFSeGeraXML: TButton
            Left = 8
            Top = 8
            Width = 161
            Height = 25
            Caption = 'Abrir Estancia Velha'
            TabOrder = 0
            OnClick = btnNFSeGeraXMLClick
          end
          object DBGrid6: TDBGrid
            Left = 8
            Top = 40
            Width = 843
            Height = 590
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dsNFSeGerarXML
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
    object tabMDFeOp: TTabSheet
      Caption = 'MDF-e'
      ImageIndex = 2
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 866
        Height = 57
        Align = alTop
        Shape = bsBottomLine
      end
      object Label32: TLabel
        Left = 8
        Top = 8
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label33: TLabel
        Left = 136
        Top = 8
        Width = 44
        Height = 13
        Caption = 'Ambiente'
      end
      object Label34: TLabel
        Left = 240
        Top = 8
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object Label35: TLabel
        Left = 392
        Top = 8
        Width = 63
        Height = 13
        Caption = 'Tipo Emiss'#227'o'
      end
      object Label37: TLabel
        Left = 496
        Top = 8
        Width = 63
        Height = 13
        Caption = 'N'#250'mero DF-e'
      end
      object Label38: TLabel
        Left = 568
        Top = 8
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object edtMDFeCnpj: TEdit
        Left = 8
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '01855673000196'
      end
      object pnlMDFe: TPanel
        Left = 0
        Top = 57
        Width = 866
        Height = 604
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlMDFe'
        TabOrder = 2
        object Bevel2: TBevel
          Left = 193
          Top = 0
          Width = 8
          Height = 604
          Align = alLeft
          Shape = bsLeftLine
        end
        object pnlMDFeBotoes: TPanel
          Left = 0
          Top = 0
          Width = 193
          Height = 604
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            193
            604)
          object Bevel3: TBevel
            Left = 0
            Top = 321
            Width = 193
            Height = 72
            Align = alTop
            Shape = bsBottomLine
          end
          object Bevel5: TBevel
            Left = 0
            Top = 0
            Width = 193
            Height = 41
            Align = alTop
            Shape = bsBottomLine
          end
          object Bevel4: TBevel
            Left = 0
            Top = 41
            Width = 193
            Height = 104
            Align = alTop
            Shape = bsBottomLine
          end
          object Bevel6: TBevel
            Left = 0
            Top = 145
            Width = 193
            Height = 72
            Align = alTop
            Shape = bsBottomLine
          end
          object Bevel7: TBevel
            Left = 0
            Top = 217
            Width = 193
            Height = 104
            Align = alTop
            Shape = bsBottomLine
          end
          object btnMDFeCriarChave: TButton
            Left = 8
            Top = 8
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_CriarChave'
            TabOrder = 0
            OnClick = btnMDFeCriarChaveClick
          end
          object btnMDFeEnviar: TButton
            Left = 8
            Top = 48
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_Enviar'
            TabOrder = 1
            OnClick = btnMDFeEnviarClick
          end
          object btnMDFeConsultar: TButton
            Left = 8
            Top = 224
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_Consultar'
            TabOrder = 2
            OnClick = btnMDFeConsultarClick
          end
          object btnMDFeBuscar: TButton
            Left = 8
            Top = 80
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_Buscar'
            TabOrder = 3
            OnClick = btnMDFeBuscarClick
          end
          object btnMDFeCancelar: TButton
            Left = 8
            Top = 112
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_Cancelar'
            TabOrder = 4
            OnClick = btnMDFeCancelarClick
          end
          object btnMDFeEncerrar: TButton
            Left = 8
            Top = 184
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_Encerrar'
            TabOrder = 5
            OnClick = btnMDFeEncerrarClick
          end
          object btnMDFeConsultarNaoEncerradas: TButton
            Left = 8
            Top = 152
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_ConsNaoEncerradas'
            TabOrder = 6
            OnClick = btnMDFeConsultarNaoEncerradasClick
          end
          object btnMDFeIncluirCondutor: TButton
            Left = 8
            Top = 328
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_IncluirCondutor'
            TabOrder = 7
            OnClick = btnMDFeIncluirCondutorClick
          end
          object btnMDFeConsultarStatusWS: TButton
            Left = 8
            Top = 360
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_ConsultarStatusWS'
            TabOrder = 8
            OnClick = btnMDFeConsultarStatusWSClick
          end
          object btnMDFeConsultarDistInteressado: TButton
            Left = 8
            Top = 256
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_ConsultarDistInteressado'
            TabOrder = 9
            OnClick = btnMDFeConsultarDistInteressadoClick
          end
          object btnMDFeConsultarDistNSU: TButton
            Left = 8
            Top = 288
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_ConsultarDistNSU'
            TabOrder = 10
            OnClick = btnMDFeConsultarDistNSUClick
          end
          object btnMDFeGerarXML: TButton
            Left = 8
            Top = 400
            Width = 177
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'MDFe_GerarXMLEnvio'
            TabOrder = 11
            OnClick = btnMDFeGerarXMLClick
          end
        end
        object pnlMDFeRetorno: TPanel
          Left = 201
          Top = 0
          Width = 665
          Height = 604
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlMDFeRetorno'
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 0
            Top = 366
            Width = 665
            Height = 3
            Cursor = crVSplit
            Align = alBottom
          end
          object tbMDFe: TRzToolbar
            Left = 0
            Top = 0
            Width = 665
            Height = 29
            AutoStyle = False
            Images = ilMFDe
            BorderInner = fsNone
            BorderOuter = fsGroove
            BorderSides = [sdBottom]
            BorderWidth = 0
            TabOrder = 0
            ToolbarControls = (
              BtnClear)
            object BtnClear: TRzToolButton
              Left = 4
              Top = 2
              DisabledIndex = 1
              ImageIndex = 0
              Caption = 'Limpar'
              OnClick = BtnClearClick
            end
          end
          object mmoMDFeAssinado: TMemo
            Left = 0
            Top = 369
            Width = 665
            Height = 235
            Align = alBottom
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object mmoMDFeRetorno: TMemo
            Left = 0
            Top = 29
            Width = 665
            Height = 337
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 2
          end
        end
      end
      object cbMDFeUF: TRzComboBox
        Left = 240
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = 'Rio Grande do Sul/RS    '
        Items.Strings = (
          'Acre/AC                 '
          'Alagoas/AL              '
          'Amap'#225'/AP                '
          'Amazonas/AM             '
          'Bahia/BA                '
          'Cear'#225'/CE                '
          'Distrito Federal/DF     '
          'Esp'#237'rito Santo/ES       '
          'Goi'#225's/GO                '
          'Maranh'#227'o/MA             '
          'Mato Grosso do Sul/MS   '
          'Mato Grosso/MT          '
          'Minas Gerais/MG         '
          'Par'#225'/PA                 '
          'Para'#237'ba/PB              '
          'Paran'#225'/PR               '
          'Pernambuco/PE           '
          'Piau'#237'/PI                '
          'Rio de Janeiro/RJ       '
          'Rio Grande do Norte/RN  '
          'Rio Grande do Sul/RS    '
          'Rond'#244'nia/RO             '
          'Roraima/RR              '
          'Santa Catarina/SC       '
          'S'#227'o Paulo/SP            '
          'Sergipe/SE              '
          'Tocantins/TO            ')
        ItemIndex = 20
        Values.Strings = (
          '12'
          '27'
          '16'
          '13'
          '29'
          '23'
          '53'
          '32'
          '52'
          '21'
          '50'
          '51'
          '31'
          '15'
          '25'
          '41'
          '26'
          '22'
          '33'
          '24'
          '43'
          '11'
          '14'
          '42'
          '35'
          '28'
          '17')
      end
      object cbMDFeAmbiente: TRzComboBox
        Left = 136
        Top = 24
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Text = 'Homologa'#231#227'o'
        Items.Strings = (
          'Homologa'#231#227'o'
          'Produ'#231#227'o')
        ItemIndex = 0
        Values.Strings = (
          '2'
          '1'
          '')
      end
      object cbMDFeTipoEmissao: TRzComboBox
        Left = 392
        Top = 24
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Text = 'Normal'
        Items.Strings = (
          'Normal'
          'Conting'#234'ncia')
        ItemIndex = 0
        Values.Strings = (
          '1'
          '2')
      end
      object edtMDFeNumero: TRzNumericEdit
        Left = 496
        Top = 24
        Width = 65
        Height = 21
        TabOrder = 5
        Value = 2000.000000000000000000
        DisplayFormat = '0;(0)'
      end
      object edtMDFeSerie: TEdit
        Left = 568
        Top = 24
        Width = 57
        Height = 21
        TabOrder = 6
        Text = '0'
      end
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 704
    Top = 376
    DOMVendorDesc = 'MSXML'
  end
  object TCPClient: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Host = 'localhost'
    Port = 7001
    Left = 496
    Top = 424
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo XML|*.xml'
    Title = 'Selecione o arquivo xml'
    Left = 632
    Top = 448
  end
  object xtrConsultaNFe: TXMLTransformProvider
    Left = 588
    Top = 88
  end
  object cdsConsultaNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrConsultaNFe'
    Left = 588
    Top = 136
    object cdsConsultaNFetpAmb: TIntegerField
      FieldName = 'tpAmb'
    end
    object cdsConsultaNFecStat: TIntegerField
      FieldName = 'cStat'
    end
    object cdsConsultaNFexMotivo: TStringField
      FieldName = 'xMotivo'
      Size = 60
    end
    object cdsConsultaNFecUF: TIntegerField
      FieldName = 'cUF'
    end
    object cdsConsultaNFechNFe: TStringField
      FieldName = 'chNFe'
      Size = 44
    end
    object cdsConsultaNFeprotNFe: TDataSetField
      FieldName = 'protNFe'
      UnNamed = True
    end
    object cdsConsultaNFeprocEventoNFe: TDataSetField
      FieldName = 'procEventoNFe'
      UnNamed = True
    end
    object cdsConsultaNFeretCancNFe: TDataSetField
      FieldName = 'retCancNFe'
      UnNamed = True
    end
  end
  object cdsNFeProtocolo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeprotNFe
    Params = <>
    Left = 588
    Top = 200
    object cdsNFeProtocolodhRecbto: TDateTimeField
      FieldName = 'dhRecbto'
    end
    object cdsNFeProtocolonProt: TStringField
      FieldName = 'nProt'
      Size = 15
    end
    object cdsNFeProtocolocStat: TIntegerField
      FieldName = 'cStat'
    end
    object cdsNFeProtocoloxMotivo: TStringField
      FieldName = 'xMotivo'
      Size = 60
    end
  end
  object cdsNFeEventos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeprocEventoNFe
    Params = <>
    Left = 588
    Top = 256
    object cdsNFeEventosId: TStringField
      FieldName = 'Id'
      Size = 17
    end
    object cdsNFeEventoscOrgao: TStringField
      FieldName = 'cOrgao'
      Size = 2
    end
    object cdsNFeEventosCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsNFeEventosdhEvento: TDateTimeField
      FieldName = 'dhEvento'
    end
    object cdsNFeEventostpEvento: TIntegerField
      FieldName = 'tpEvento'
    end
    object cdsNFeEventosnSeqEvento: TIntegerField
      FieldName = 'nSeqEvento'
    end
    object cdsNFeEventosdescEvento: TStringField
      FieldName = 'descEvento'
      Size = 60
    end
    object cdsNFeEventosxJust: TStringField
      FieldName = 'xJust'
      Size = 1000
    end
    object cdsNFeEventosxCorrecao: TStringField
      FieldName = 'xCorrecao'
      Size = 1000
    end
  end
  object cdsNFeCancelamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeretCancNFe
    Params = <>
    Left = 596
    Top = 280
  end
  object dsConsultaNFe: TDataSource
    DataSet = cdsConsultaNFe
    Left = 700
    Top = 144
  end
  object dsNFeProtocolo: TDataSource
    DataSet = cdsNFeProtocolo
    Left = 700
    Top = 200
  end
  object dsNFeEventos: TDataSource
    DataSet = cdsNFeEventos
    Left = 700
    Top = 256
  end
  object dsNFeCancelamento: TDataSource
    DataSet = cdsNFeCancelamento
    Left = 660
    Top = 256
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 512
    Top = 88
  end
  object IOHandlerSocket: TIdIOHandlerSocket
    Left = 584
    Top = 448
  end
  object xtrConsultaCadastro: TXMLTransformProvider
    Left = 452
    Top = 152
  end
  object cdsConsultaCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrConsultaCadastro'
    Left = 452
    Top = 200
    object cdsConsultaCadastroIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsConsultaCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsConsultaCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsConsultaCadastroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsConsultaCadastrocSit: TIntegerField
      FieldName = 'cSit'
    end
    object cdsConsultaCadastroindCredNFe: TIntegerField
      FieldName = 'indCredNFe'
    end
    object cdsConsultaCadastroindCredCTe: TIntegerField
      FieldName = 'indCredCTe'
    end
    object cdsConsultaCadastroxNome: TStringField
      FieldName = 'xNome'
      Size = 60
    end
    object cdsConsultaCadastroxRegApur: TStringField
      FieldName = 'xRegApur'
      Size = 60
    end
    object cdsConsultaCadastroCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsConsultaCadastrodIniAtiv: TDateTimeField
      FieldName = 'dIniAtiv'
    end
    object cdsConsultaCadastrodUltSit: TDateTimeField
      FieldName = 'dUltSit'
    end
    object cdsConsultaCadastroIEUnica: TStringField
      FieldName = 'IEUnica'
      Size = 14
    end
    object cdsConsultaCadastroIEAtual: TStringField
      FieldName = 'IEAtual'
      Size = 14
    end
    object cdsConsultaCadastroxLgr: TStringField
      FieldName = 'xLgr'
      Size = 255
    end
    object cdsConsultaCadastronro: TStringField
      FieldName = 'nro'
      Size = 60
    end
    object cdsConsultaCadastroxCpl: TStringField
      FieldName = 'xCpl'
      Size = 60
    end
    object cdsConsultaCadastroxBairro: TStringField
      FieldName = 'xBairro'
      Size = 60
    end
    object cdsConsultaCadastrocMun: TStringField
      FieldName = 'cMun'
      Size = 7
    end
    object cdsConsultaCadastroxMun: TStringField
      FieldName = 'xMun'
      Size = 60
    end
    object cdsConsultaCadastroCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
  end
  object dsConsultaCadastro: TDataSource
    DataSet = cdsConsultaCadastro
    Left = 456
    Top = 248
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '.xml'
    FileName = 
      'C:\Users\Edson\Documents\!desenv\Delphi7\Cleomar\NFe_Util\Nota E' +
      'letronica\teste.xml'
    Filter = 'XML|*.xml'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 684
    Top = 528
  end
  object cdsNFSe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Numero'
        DataType = ftInteger
      end
      item
        Name = 'CodigoVerificacao'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DataEmissao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IdentificacaoRps'
        ChildDefs = <
          item
            Name = 'Numero1'
            DataType = ftInteger
          end
          item
            Name = 'Serie'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'Tipo'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'DataEmissaoRps'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NaturezaOperacao'
        DataType = ftInteger
      end
      item
        Name = 'RegimeEspecialTributacao'
        DataType = ftInteger
      end
      item
        Name = 'OptanteSimplesNacional'
        DataType = ftInteger
      end
      item
        Name = 'IncentivadorCultural'
        DataType = ftInteger
      end
      item
        Name = 'Competencia'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'OutrasInformacoes'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Servico'
        ChildDefs = <
          item
            Name = 'Valores'
            ChildDefs = <
              item
                Name = 'ValorServicos'
                DataType = ftFloat
              end
              item
                Name = 'ValorDeducoes'
                DataType = ftFloat
              end
              item
                Name = 'ValorPis'
                DataType = ftFloat
              end
              item
                Name = 'ValorCofins'
                DataType = ftFloat
              end
              item
                Name = 'ValorInss'
                DataType = ftFloat
              end
              item
                Name = 'ValorIr'
                DataType = ftFloat
              end
              item
                Name = 'ValorCsll'
                DataType = ftFloat
              end
              item
                Name = 'IssRetido'
                DataType = ftInteger
              end
              item
                Name = 'ValorIss'
                DataType = ftFloat
              end
              item
                Name = 'OutrasRetencoes'
                DataType = ftFloat
              end
              item
                Name = 'BaseCalculo'
                DataType = ftFloat
              end
              item
                Name = 'Aliquota'
                DataType = ftFloat
              end
              item
                Name = 'ValorLiquidoNfse'
                DataType = ftFloat
              end
              item
                Name = 'ValorIssRetido'
                DataType = ftFloat
              end
              item
                Name = 'DescontoCondicionado'
                DataType = ftFloat
              end
              item
                Name = 'DescontoIncondicionado'
                DataType = ftFloat
              end>
            DataType = ftADT
            Size = 16
          end
          item
            Name = 'ItemListaServico'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'CodigoCnae'
            DataType = ftInteger
          end
          item
            Name = 'CodigoTributacaoMunicipio'
            DataType = ftString
            Size = 20
          end
          item
            Name = 'Discriminacao'
            DataType = ftString
            Size = 2000
          end
          item
            Name = 'MunicipioPrestacaoServico'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 6
      end
      item
        Name = 'NfseSubstituida'
        DataType = ftInteger
      end
      item
        Name = 'ValorCredito'
        DataType = ftFloat
      end
      item
        Name = 'PrestadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoPrestador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'NomeFantasia'
            DataType = ftString
            Size = 60
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'CodigoMunicipio'
                DataType = ftInteger
              end
              item
                Name = 'Uf'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 5
      end
      item
        Name = 'TomadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoTomador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'CodigoMunicipio'
                DataType = ftInteger
              end
              item
                Name = 'Uf1'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 4
      end
      item
        Name = 'IntermediarioServico'
        ChildDefs = <
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'CpfCnpj'
            ChildDefs = <
              item
                Name = 'Cpf'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Cnpj'
                DataType = ftString
                Size = 14
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'InscricaoMunicipal'
            DataType = ftString
            Size = 15
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'OrgaoGerador'
        ChildDefs = <
          item
            Name = 'CodigoMunicipio'
            DataType = ftInteger
          end
          item
            Name = 'Uf2'
            DataType = ftString
            Size = 2
          end>
        DataType = ftADT
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 152
    Data = {
      7C0800009619E0BD0200000018000000550000000000030000007C08064E756D
      65726F040001000000000011436F6469676F566572696669636163616F010049
      00000001000557494454480200020009000B44617461456D697373616F010049
      0000000100055749445448020002001400104964656E74696669636163616F52
      707303000C0100000000074E756D65726F310400010000000000055365726965
      0100490000000100055749445448020002000500045469706F04000100000000
      000E44617461456D697373616F52707301004900000001000557494454480200
      02001400104E61747572657A614F7065726163616F0400010000000000185265
      67696D65457370656369616C5472696275746163616F0400010000000000164F
      7074616E746553696D706C65734E6163696F6E616C040001000000000014496E
      63656E74697661646F7243756C747572616C04000100000000000B436F6D7065
      74656E6369610100490000000100055749445448020002000800114F75747261
      73496E666F726D61636F6573020049000000010005574944544802000200FF00
      075365727669636F06000C01000000000756616C6F72657310000C0100000000
      0D56616C6F725365727669636F7308000400000000000D56616C6F7244656475
      636F657308000400000000000856616C6F7250697308000400000000000B5661
      6C6F72436F66696E7308000400000000000956616C6F72496E73730800040000
      0000000756616C6F72497208000400000000000956616C6F7243736C6C080004
      00000000000949737352657469646F04000100000000000856616C6F72497373
      08000400000000000F4F7574726173526574656E636F65730800040000000000
      0B4261736543616C63756C6F080004000000000008416C6971756F7461080004
      00000000001056616C6F724C69717569646F4E66736508000400000000000E56
      616C6F7249737352657469646F080004000000000014446573636F6E746F436F
      6E646963696F6E61646F080004000000000016446573636F6E746F496E636F6E
      646963696F6E61646F0800040000000000104974656D4C697374615365727669
      636F01004900000001000557494454480200020005000A436F6469676F436E61
      65040001000000000019436F6469676F5472696275746163616F4D756E696369
      70696F01004900000001000557494454480200020014000D4469736372696D69
      6E6163616F020049000000010005574944544802000200D007194D756E696369
      70696F50726573746163616F5365727669636F04000100000000000F4E667365
      537562737469747569646104000100000000000C56616C6F724372656469746F
      080004000000000010507265737461646F725365727669636F05000C01000000
      00164964656E74696669636163616F507265737461646F7202000C0100000000
      07437066436E706A02000C010000000003437066010049000000010005574944
      5448020002000B0004436E706A0100490000000100055749445448020002000E
      0012496E7363726963616F4D756E69636970616C010049000000010005574944
      5448020002000F000B52617A616F536F6369616C010049000000010005574944
      54480200020073000C4E6F6D6546616E74617369610100490000000100055749
      445448020002003C0008456E64657265636F07000C010000000008456E646572
      65636F0100490000000100055749445448020002007D00074E756D65726F3201
      00490000000100055749445448020002000A000B436F6D706C656D656E746F01
      00490000000100055749445448020002003C000642616972726F010049000000
      0100055749445448020002003C000F436F6469676F4D756E69636970696F0400
      0100000000000255660100490000000100055749445448020002000200034365
      70040001000000000007436F6E7461746F02000C01000000000854656C65666F
      6E650100490000000100055749445448020002000B0005456D61696C01004900
      000001000557494454480200020050000E546F6D61646F725365727669636F04
      000C0100000000144964656E74696669636163616F546F6D61646F7202000C01
      0000000007437066436E706A02000C0100000000034370660100490000000100
      055749445448020002000B0004436E706A010049000000010005574944544802
      0002000E0012496E7363726963616F4D756E69636970616C0100490000000100
      055749445448020002000F000B52617A616F536F6369616C0100490000000100
      05574944544802000200730008456E64657265636F07000C010000000008456E
      64657265636F0100490000000100055749445448020002007D00074E756D6572
      6F320100490000000100055749445448020002000A000B436F6D706C656D656E
      746F0100490000000100055749445448020002003C000642616972726F010049
      0000000100055749445448020002003C000F436F6469676F4D756E6963697069
      6F04000100000000000355663101004900000001000557494454480200020002
      0003436570040001000000000007436F6E7461746F02000C0100000000085465
      6C65666F6E650100490000000100055749445448020002000B0005456D61696C
      010049000000010005574944544802000200500014496E7465726D6564696172
      696F5365727669636F03000C01000000000B52617A616F536F6369616C010049
      000000010005574944544802000200730007437066436E706A02000C01000000
      00034370660100490000000100055749445448020002000B0004436E706A0100
      490000000100055749445448020002000E0012496E7363726963616F4D756E69
      636970616C0100490000000100055749445448020002000F000C4F7267616F47
      657261646F7202000C01000000000F436F6469676F4D756E69636970696F0400
      0100000000000355663201004900000001000557494454480200020002000000}
    object cdsNFSeNumero: TIntegerField
      FieldName = 'Numero'
    end
    object cdsNFSeCodigoVerificacao: TStringField
      FieldName = 'CodigoVerificacao'
      Size = 9
    end
    object cdsNFSeDataEmissao: TStringField
      FieldName = 'DataEmissao'
    end
    object cdsNFSeIdentificacaoRps: TADTField
      FieldName = 'IdentificacaoRps'
      object cdsNFSeIdentificacaoRpsNumero1: TIntegerField
        FieldName = 'Numero1'
      end
      object cdsNFSeIdentificacaoRpsSerie: TStringField
        FieldName = 'Serie'
        Size = 5
      end
      object cdsNFSeIdentificacaoRpsTipo: TIntegerField
        FieldName = 'Tipo'
      end
    end
    object cdsNFSeDataEmissaoRps: TStringField
      FieldName = 'DataEmissaoRps'
    end
    object cdsNFSeNaturezaOperacao: TIntegerField
      FieldName = 'NaturezaOperacao'
    end
    object cdsNFSeRegimeEspecialTributacao: TIntegerField
      FieldName = 'RegimeEspecialTributacao'
    end
    object cdsNFSeOptanteSimplesNacional: TIntegerField
      FieldName = 'OptanteSimplesNacional'
    end
    object cdsNFSeIncentivadorCultural: TIntegerField
      FieldName = 'IncentivadorCultural'
    end
    object cdsNFSeCompetencia: TStringField
      FieldName = 'Competencia'
      Size = 8
    end
    object cdsNFSeOutrasInformacoes: TStringField
      FieldName = 'OutrasInformacoes'
      Size = 255
    end
    object cdsNFSeServico: TADTField
      FieldName = 'Servico'
      object cdsNFSeServicoValores: TADTField
        FieldName = 'Valores'
        object cdsNFSeServicoValoresValorServicos: TFloatField
          FieldName = 'ValorServicos'
        end
        object cdsNFSeServicoValoresValorDeducoes: TFloatField
          FieldName = 'ValorDeducoes'
        end
        object cdsNFSeServicoValoresValorPis: TFloatField
          FieldName = 'ValorPis'
        end
        object cdsNFSeServicoValoresValorCofins: TFloatField
          FieldName = 'ValorCofins'
        end
        object cdsNFSeServicoValoresValorInss: TFloatField
          FieldName = 'ValorInss'
        end
        object cdsNFSeServicoValoresValorIr: TFloatField
          FieldName = 'ValorIr'
        end
        object cdsNFSeServicoValoresValorCsll: TFloatField
          FieldName = 'ValorCsll'
        end
        object cdsNFSeServicoValoresIssRetido: TIntegerField
          FieldName = 'IssRetido'
        end
        object cdsNFSeServicoValoresValorIss: TFloatField
          FieldName = 'ValorIss'
        end
        object cdsNFSeServicoValoresOutrasRetencoes: TFloatField
          FieldName = 'OutrasRetencoes'
        end
        object cdsNFSeServicoValoresBaseCalculo: TFloatField
          FieldName = 'BaseCalculo'
        end
        object cdsNFSeServicoValoresAliquota: TFloatField
          FieldName = 'Aliquota'
        end
        object cdsNFSeServicoValoresValorLiquidoNfse: TFloatField
          FieldName = 'ValorLiquidoNfse'
        end
        object cdsNFSeServicoValoresValorIssRetido: TFloatField
          FieldName = 'ValorIssRetido'
        end
        object cdsNFSeServicoValoresDescontoCondicionado: TFloatField
          FieldName = 'DescontoCondicionado'
        end
        object cdsNFSeServicoValoresDescontoIncondicionado: TFloatField
          FieldName = 'DescontoIncondicionado'
        end
      end
      object cdsNFSeServicoItemListaServico: TStringField
        FieldName = 'ItemListaServico'
        Size = 5
      end
      object cdsNFSeServicoCodigoCnae: TIntegerField
        FieldName = 'CodigoCnae'
      end
      object cdsNFSeServicoCodigoTributacaoMunicipio: TStringField
        FieldName = 'CodigoTributacaoMunicipio'
      end
      object cdsNFSeServicoDiscriminacao: TStringField
        FieldName = 'Discriminacao'
        Size = 2000
      end
      object cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField
        FieldName = 'MunicipioPrestacaoServico'
      end
    end
    object cdsNFSeNfseSubstituida: TIntegerField
      FieldName = 'NfseSubstituida'
    end
    object cdsNFSeValorCredito: TFloatField
      FieldName = 'ValorCredito'
    end
    object cdsNFSePrestadorServico: TADTField
      FieldName = 'PrestadorServico'
      object cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField
        FieldName = 'IdentificacaoPrestador'
        object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSePrestadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSePrestadorServicoNomeFantasia: TStringField
        FieldName = 'NomeFantasia'
        Size = 60
      end
      object cdsNFSePrestadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSePrestadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSePrestadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSePrestadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoCodigoMunicipio: TIntegerField
          FieldName = 'CodigoMunicipio'
        end
        object cdsNFSePrestadorServicoEnderecoUf: TStringField
          FieldName = 'Uf'
          Size = 2
        end
        object cdsNFSePrestadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSePrestadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSePrestadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSePrestadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeTomadorServico: TADTField
      FieldName = 'TomadorServico'
      object cdsNFSeTomadorServicoIdentificacaoTomador: TADTField
        FieldName = 'IdentificacaoTomador'
        object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSeTomadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeTomadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSeTomadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSeTomadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSeTomadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoCodigoMunicipio: TIntegerField
          FieldName = 'CodigoMunicipio'
        end
        object cdsNFSeTomadorServicoEnderecoUf1: TStringField
          FieldName = 'Uf1'
          Size = 2
        end
        object cdsNFSeTomadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSeTomadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSeTomadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSeTomadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeIntermediarioServico: TADTField
      FieldName = 'IntermediarioServico'
      object cdsNFSeIntermediarioServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeIntermediarioServicoCpfCnpj: TADTField
        FieldName = 'CpfCnpj'
        object cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField
          FieldName = 'Cpf'
          Size = 11
        end
        object cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField
          FieldName = 'Cnpj'
          Size = 14
        end
      end
      object cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField
        FieldName = 'InscricaoMunicipal'
        Size = 15
      end
    end
    object cdsNFSeOrgaoGerador: TADTField
      FieldName = 'OrgaoGerador'
      object cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField
        FieldName = 'CodigoMunicipio'
      end
      object cdsNFSeOrgaoGeradorUf2: TStringField
        FieldName = 'Uf2'
        Size = 2
      end
    end
  end
  object dsNFSe: TDataSource
    DataSet = cdsNFSe
    Left = 264
    Top = 112
  end
  object xtrNotaDestinada: TXMLTransformProvider
    Left = 516
    Top = 448
  end
  object cdsNotaDestinada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrNotaDestinada'
    AfterScroll = cdsNotaDestinadaAfterScroll
    Left = 516
    Top = 496
    object cdsNotaDestinadaNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsNotaDestinadaschema: TStringField
      FieldName = 'schema'
      Size = 23
    end
  end
  object dsNotaDestinada: TDataSource
    DataSet = cdsNotaDestinada
    Left = 520
    Top = 544
  end
  object dsNFSeGerarXML: TDataSource
    Left = 196
    Top = 232
  end
  object ilMFDe: TImageList
    Left = 357
    Top = 89
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800000009900000099000000990000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800066666600666666006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000CC0000009900000099000000990000009900000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080009999990066666600666666006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000CC000000CC000000CC00000099000000990000009900000099000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00999999009999990099999900666666006666660066666600666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      00000000FF000000CC000000CC000000CC000000990000009900000099000099
      990000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000CCCCCC009999990099999900999999006666660066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000CC000000CC000000CC00000099000099990000CC
      CC00009999000000000000000000000000000000000000000000000000000000
      0000CCCCCC00CCCCCC0099999900999999009999990066666600666666009999
      9900666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000CC000000CC000099990000CCCC0000CC
      CC0000CCCC000099990000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00999999009999990066666600999999009999
      9900999999006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000800000CCCC0000FFFF0000FFFF0000CC
      CC0000CCCC0000CCCC0000999900000000000000000000000000000000000000
      00000000000000000000CCCCCC006666660099999900CCCCCC00CCCCCC009999
      9900999999009999990066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000CCCC0000FFFF00FFFFFF00C0C0C00000FF
      FF0000CCCC0000CCCC0000CCCC00009999000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00FFFFFF00C0C0C000CCCC
      CC00999999009999990099999900666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CCCC0000FFFF00FFFFFF00C0C0
      C00000FFFF0000CCCC0000999900993300000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00FFFFFF00C0C0
      C000CCCCCC009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CCCC0000FFFF00FFFF
      FF0000FFFF0000999900CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00FFFF
      FF00CCCCCC006666660099999900666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CCCC0000FF
      FF0000CCCC00CC660000CC660000CC6600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      CC00FF990000FF990000CC660000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000FF990000FF990000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066666600CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000FF990000FF9900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066666600CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A7FFA7FF0000000001FF01FF00000000
      007F007F00000000003F003F00000000001F001F00000000500F500F00000000
      F007F00700000000F803F80300000000FC01FC0100000000FE00FE0000000000
      FF00FF0000000000FF80FF8000000000FFC0FFC000000000FFE0FFE000000000
      FFF0FFF000000000FFF8FFF80000000000000000000000000000000000000000
      000000000000}
  end
  object shMDFe: TJvStrHolder
    Capacity = 118
    Macros = <
      item
        Name = 'chave'
      end
      item
        Name = 'uf'
      end
      item
        Name = 'ambiente'
      end
      item
        Name = 'serie'
      end
      item
        Name = 'numerodfe'
      end
      item
        Name = 'codigodfe'
      end
      item
        Name = 'digitodfe'
      end
      item
        Name = 'datahora'
      end
      item
        Name = 'tipoemissao'
      end
      item
        Name = 'ufini'
      end
      item
        Name = 'cnpj'
      end
      item
        Name = 'placa'
      end>
    Duplicates = dupAccept
    Left = 333
    Top = 177
    InternalVer = 1
    StrData = (
      ''
      
        '3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554' +
        '462d38223f3e'
      
        '3c4d44466520786d6c6e733d22687474703a2f2f7777772e706f7274616c6669' +
        '7363616c2e696e662e62722f6d646665223e'
      
        '3c696e664d4446652076657273616f3d22332e3030222049643d256368617665' +
        '2e3e'
      '20203c6964653e'
      '202020203c6355463e2575662e3c2f6355463e'
      '202020203c7470416d623e25616d6269656e74652e3c2f7470416d623e'
      '202020203c7470456d69743e323c2f7470456d69743e'
      '202020203c6d6f643e35383c2f6d6f643e'
      '202020203c73657269653e2573657269652e3c2f73657269653e'
      '202020203c6e4d44463e256e756d65726f6466652e3c2f6e4d44463e'
      '202020203c634d44463e25636f6469676f6466652e3c2f634d44463e'
      '202020203c6344563e2564696769746f6466652e3c2f6344563e'
      '202020203c6d6f64616c3e313c2f6d6f64616c3e'
      '202020203c6468456d693e2564617461686f72612e3c2f6468456d693e'
      
        '202020203c7470456d69733e257469706f656d697373616f2e3c2f7470456d69' +
        '733e'
      '202020203c70726f63456d693e303c2f70726f63456d693e'
      
        '202020203c76657250726f633e444c4c5f4d4446652e5574696c20765f312e30' +
        '303c2f76657250726f633e'
      '202020203c5546496e693e257566696e692e3c2f5546496e693e'
      '202020203c554646696d3e53433c2f554646696d3e'
      '202020203c696e664d756e436172726567613e'
      
        '2020202020203c634d756e436172726567613e343331333430393c2f634d756e' +
        '436172726567613e'
      
        '2020202020203c784d756e436172726567613e4e6f766f2048616d627572676f' +
        '3c2f784d756e436172726567613e'
      '202020203c2f696e664d756e436172726567613e'
      '20203c2f6964653e'
      '20203c656d69743e'
      '202020203c434e504a3e25636e706a2e3c2f434e504a3e'
      '202020203c49453e3836303432363334333c2f49453e'
      
        '202020203c784e6f6d653e435249204153534553532026616d703b20494e464f' +
        '524d4154494341204c5444413c2f784e6f6d653e'
      '202020203c656e646572456d69743e'
      '2020202020203c784c67723e52554120545550493c2f784c67723e'
      '2020202020203c6e726f3e52554120545550493c2f6e726f3e'
      '2020202020203c7843706c3e3320414e4441523c2f7843706c3e'
      
        '2020202020203c7842616972726f3e52494f204252414e434f3c2f7842616972' +
        '726f3e'
      '2020202020203c634d756e3e343331333430393c2f634d756e3e'
      '2020202020203c784d756e3e4e6f766f2048616d627572676f3c2f784d756e3e'
      '2020202020203c4345503e39333333363031303c2f4345503e'
      '2020202020203c55463e257566696e692e3c2f55463e'
      '2020202020203c666f6e653e313433333032323030303c2f666f6e653e'
      
        '2020202020203c656d61696c3e636f6e7461746f40666c6578646f63732e636f' +
        '6d2e62723c2f656d61696c3e'
      '202020203c2f656e646572456d69743e'
      '20203c2f656d69743e'
      '20203c696e664d6f64616c2076657273616f4d6f64616c3d22332e3030223e'
      '202020203c726f646f3e'
      '2020202020203c7665696354726163616f3e'
      '20202020202020203c706c6163613e25706c6163612e3c2f706c6163613e'
      '20202020202020203c746172613e31353030303c2f746172613e'
      '20202020202020203c636f6e6475746f723e'
      
        '202020202020202020203c784e6f6d653e46756c616e6f2064652054616c206d' +
        '6f746f72697374613c2f784e6f6d653e'
      '202020202020202020203c4350463e31313131313131313131313c2f4350463e'
      '20202020202020203c2f636f6e6475746f723e'
      '20202020202020203c636f6e6475746f723e'
      
        '202020202020202020203c784e6f6d653e42656c7472616e6f2064652054616c' +
        '206d6f746f72697374613c2f784e6f6d653e'
      '202020202020202020203c4350463e32323232323232323232323c2f4350463e'
      '20202020202020203c2f636f6e6475746f723e'
      '20202020202020203c636f6e6475746f723e'
      
        '202020202020202020203c784e6f6d653e53696372616e6f2064652054616c20' +
        '6d6f746f72697374613c2f784e6f6d653e'
      '202020202020202020203c4350463e33333333333333333333333c2f4350463e'
      '20202020202020203c2f636f6e6475746f723e'
      '20202020202020203c7470526f643e30313c2f7470526f643e'
      '20202020202020203c74704361723e30303c2f74704361723e'
      '20202020202020203c55463e53503c2f55463e'
      '2020202020203c2f7665696354726163616f3e'
      '202020203c2f726f646f3e'
      '20203c2f696e664d6f64616c3e'
      '20203c696e66446f633e'
      '202020203c696e664d756e44657363617267613e'
      
        '2020202020203c634d756e44657363617267613e343230353430373c2f634d75' +
        '6e44657363617267613e'
      
        '2020202020203c784d756e44657363617267613e466c6f7269616e6f706f6c69' +
        '733c2f784d756e44657363617267613e'
      '2020202020203c696e664e46653e'
      
        '20202020202020203c63684e46653e3335313430323130313432373835303030' +
        '3139303535303030313233343536373839313837363534333231303c2f63684e' +
        '46653e'
      '2020202020203c2f696e664e46653e'
      '2020202020203c696e664e46653e'
      
        '20202020202020203c63684e46653e3335313430323130313432373835303030' +
        '3139303535303030313233343536373930313837363534333231313c2f63684e' +
        '46653e'
      '2020202020203c2f696e664e46653e'
      '202020203c2f696e664d756e44657363617267613e'
      '20203c2f696e66446f633e'
      '20203c746f743e'
      '202020203c714e46653e323c2f714e46653e'
      '202020203c7643617267613e31353030302e30303c2f7643617267613e'
      '202020203c63556e69643e30313c2f63556e69643e'
      '202020203c7143617267613e31323330303c2f7143617267613e'
      '20203c2f746f743e'
      '20203c6c61637265733e'
      '202020203c6e4c616372653e414b555831303031394b583c2f6e4c616372653e'
      '20203c2f6c61637265733e'
      '20203c6c61637265733e'
      '202020203c6e4c616372653e414b555831303032304b583c2f6e4c616372653e'
      '20203c2f6c61637265733e'
      '20203c6c61637265733e'
      '202020203c6e4c616372653e414b555831303032314b583c2f6e4c616372653e'
      '20203c2f6c61637265733e'
      '20203c6c61637265733e'
      '202020203c6e4c616372653e414b555831303032304b583c2f6e4c616372653e'
      '20203c2f6c61637265733e'
      '20203c617574584d4c3e'
      '202020203c434e504a3e25636e706a2e3c2f434e504a3e'
      '20203c2f617574584d4c3e'
      '20203c617574584d4c3e'
      '20202020203c4350463e30303030303030303139313c2f4350463e'
      '20203c2f617574584d4c3e'
      '20203c696e66416469633e'
      
        '202020203c696e664164466973636f3e496e666f726d61636f65732064652041' +
        '6463696f6e61697320646f20466973636f2e204f7065726163616f206e616f20' +
        '7472696275746164612e3c2f696e664164466973636f3e'
      
        '202020203c696e6643706c3e5465737465206465206765726163616f20646f20' +
        '584d4c20646f204d44462d652e3c2f696e6643706c3e'
      '20203c2f696e66416469633e'
      '3c2f696e664d4446653e'
      '3c2f4d4446653e'
      '20'
      '20'
      '20'
      '20'
      '20')
  end
  object FormStorage1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'edtMDFeCnpj.Text'
      'edtMDFeNumero.Text'
      'edtMDFeSerie.Text'
      'cbMDFeAmbiente.ItemIndex'
      'cbMDFeTipoEmissao.ItemIndex'
      'cbMDFeUF.ItemIndex')
    StoredValues = <>
    Left = 333
    Top = 257
  end
  object xtrloteDistNFeRS: TXMLTransformProvider
    Left = 316
    Top = 472
  end
  object cdsNotasContador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrloteDistNFeRS'
    Left = 320
    Top = 512
  end
  object ZipMaster1: TZipMaster
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLL_Load = False
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    LanguageID = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    UseUTF8 = False
    Verbose = False
    Version = '1.9.1.0012'
    WriteOptions = []
    Left = 88
    Top = 256
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 256
    Top = 272
  end
end
