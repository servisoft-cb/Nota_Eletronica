unit uNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc, StdCtrls, oxmldom, Buttons,
  ComCtrls, IdIOHandler, IdIOHandlerSocket, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, DB, DBClient, Provider, Xmlxform, Grids,
  DBGrids, Spin, ExtCtrls, uXMLClientDataSet_NFSe_CampoBom,
  uXMLClientDataSet_NFSe_PortoAlegre, uXMLClientDataSet, JPeG, Placemnt,
  JvStrHlder, Mask, RzEdit, RzButton, ImgList, RzPanel, RzCmboBx, ToolEdit,
  CurrEdit, ZipMstr, ZLIB, IdCoder, IdCoder3to4, IdCoderMIME;

type
  TForm1 = class(TForm)
    XMLDocument1: TXMLDocument;
    TCPClient: TIdTCPClient;
    OpenDialog: TOpenDialog;
    xtrConsultaNFe: TXMLTransformProvider;
    cdsConsultaNFe: TClientDataSet;
    cdsConsultaNFetpAmb: TIntegerField;
    cdsConsultaNFecStat: TIntegerField;
    cdsConsultaNFexMotivo: TStringField;
    cdsConsultaNFecUF: TIntegerField;
    cdsConsultaNFechNFe: TStringField;
    cdsConsultaNFeprotNFe: TDataSetField;
    cdsConsultaNFeprocEventoNFe: TDataSetField;
    cdsConsultaNFeretCancNFe: TDataSetField;
    cdsNFeProtocolo: TClientDataSet;
    cdsNFeProtocolodhRecbto: TDateTimeField;
    cdsNFeProtocolonProt: TStringField;
    cdsNFeProtocolocStat: TIntegerField;
    cdsNFeProtocoloxMotivo: TStringField;
    cdsNFeEventos: TClientDataSet;
    cdsNFeEventosId: TStringField;
    cdsNFeEventoscOrgao: TStringField;
    cdsNFeEventosCNPJ: TStringField;
    cdsNFeEventosdhEvento: TDateTimeField;
    cdsNFeEventostpEvento: TIntegerField;
    cdsNFeEventosnSeqEvento: TIntegerField;
    cdsNFeEventosdescEvento: TStringField;
    cdsNFeCancelamento: TClientDataSet;
    dsConsultaNFe: TDataSource;
    dsNFeProtocolo: TDataSource;
    dsNFeEventos: TDataSource;
    dsNFeCancelamento: TDataSource;
    OpenDialog1: TOpenDialog;
    IOHandlerSocket: TIdIOHandlerSocket;
    cdsNFeEventosxJust: TStringField;
    cdsNFeEventosxCorrecao: TStringField;
    xtrConsultaCadastro: TXMLTransformProvider;
    cdsConsultaCadastro: TClientDataSet;
    cdsConsultaCadastroIE: TStringField;
    cdsConsultaCadastroCNPJ: TStringField;
    cdsConsultaCadastroCPF: TStringField;
    cdsConsultaCadastroUF: TStringField;
    cdsConsultaCadastrocSit: TIntegerField;
    cdsConsultaCadastroindCredNFe: TIntegerField;
    cdsConsultaCadastroindCredCTe: TIntegerField;
    cdsConsultaCadastroxNome: TStringField;
    cdsConsultaCadastroxRegApur: TStringField;
    cdsConsultaCadastroCNAE: TStringField;
    cdsConsultaCadastrodIniAtiv: TDateTimeField;
    cdsConsultaCadastrodUltSit: TDateTimeField;
    cdsConsultaCadastroIEUnica: TStringField;
    cdsConsultaCadastroIEAtual: TStringField;
    cdsConsultaCadastroxLgr: TStringField;
    cdsConsultaCadastronro: TStringField;
    cdsConsultaCadastroxCpl: TStringField;
    cdsConsultaCadastroxBairro: TStringField;
    cdsConsultaCadastrocMun: TStringField;
    cdsConsultaCadastroxMun: TStringField;
    cdsConsultaCadastroCEP: TStringField;
    dsConsultaCadastro: TDataSource;
    SaveDialog: TSaveDialog;
    cdsNFSe: TClientDataSet;
    cdsNFSeNumero: TIntegerField;
    cdsNFSeCodigoVerificacao: TStringField;
    cdsNFSeDataEmissao: TStringField;
    cdsNFSeIdentificacaoRps: TADTField;
    cdsNFSeIdentificacaoRpsNumero1: TIntegerField;
    cdsNFSeIdentificacaoRpsSerie: TStringField;
    cdsNFSeIdentificacaoRpsTipo: TIntegerField;
    cdsNFSeDataEmissaoRps: TStringField;
    cdsNFSeNaturezaOperacao: TIntegerField;
    cdsNFSeRegimeEspecialTributacao: TIntegerField;
    cdsNFSeOptanteSimplesNacional: TIntegerField;
    cdsNFSeIncentivadorCultural: TIntegerField;
    cdsNFSeCompetencia: TStringField;
    cdsNFSeOutrasInformacoes: TStringField;
    cdsNFSeServico: TADTField;
    cdsNFSeServicoValores: TADTField;
    cdsNFSeServicoValoresValorServicos: TFloatField;
    cdsNFSeServicoValoresValorDeducoes: TFloatField;
    cdsNFSeServicoValoresValorPis: TFloatField;
    cdsNFSeServicoValoresValorCofins: TFloatField;
    cdsNFSeServicoValoresValorInss: TFloatField;
    cdsNFSeServicoValoresValorIr: TFloatField;
    cdsNFSeServicoValoresValorCsll: TFloatField;
    cdsNFSeServicoValoresIssRetido: TIntegerField;
    cdsNFSeServicoValoresValorIss: TFloatField;
    cdsNFSeServicoValoresOutrasRetencoes: TFloatField;
    cdsNFSeServicoValoresBaseCalculo: TFloatField;
    cdsNFSeServicoValoresAliquota: TFloatField;
    cdsNFSeServicoValoresValorLiquidoNfse: TFloatField;
    cdsNFSeServicoValoresValorIssRetido: TFloatField;
    cdsNFSeServicoValoresDescontoCondicionado: TFloatField;
    cdsNFSeServicoValoresDescontoIncondicionado: TFloatField;
    cdsNFSeServicoItemListaServico: TStringField;
    cdsNFSeServicoCodigoCnae: TIntegerField;
    cdsNFSeServicoCodigoTributacaoMunicipio: TStringField;
    cdsNFSeServicoDiscriminacao: TStringField;
    cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField;
    cdsNFSeNfseSubstituida: TIntegerField;
    cdsNFSeValorCredito: TFloatField;
    cdsNFSePrestadorServico: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField;
    cdsNFSePrestadorServicoRazaoSocial: TStringField;
    cdsNFSePrestadorServicoNomeFantasia: TStringField;
    cdsNFSePrestadorServicoEndereco: TADTField;
    cdsNFSePrestadorServicoEnderecoEndereco: TStringField;
    cdsNFSePrestadorServicoEnderecoNumero2: TStringField;
    cdsNFSePrestadorServicoEnderecoComplemento: TStringField;
    cdsNFSePrestadorServicoEnderecoBairro: TStringField;
    cdsNFSePrestadorServicoEnderecoCodigoMunicipio: TIntegerField;
    cdsNFSePrestadorServicoEnderecoUf: TStringField;
    cdsNFSePrestadorServicoEnderecoCep: TIntegerField;
    cdsNFSePrestadorServicoContato: TADTField;
    cdsNFSePrestadorServicoContatoTelefone: TStringField;
    cdsNFSePrestadorServicoContatoEmail: TStringField;
    cdsNFSeTomadorServico: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomador: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField;
    cdsNFSeTomadorServicoRazaoSocial: TStringField;
    cdsNFSeTomadorServicoEndereco: TADTField;
    cdsNFSeTomadorServicoEnderecoEndereco: TStringField;
    cdsNFSeTomadorServicoEnderecoNumero2: TStringField;
    cdsNFSeTomadorServicoEnderecoComplemento: TStringField;
    cdsNFSeTomadorServicoEnderecoBairro: TStringField;
    cdsNFSeTomadorServicoEnderecoCodigoMunicipio: TIntegerField;
    cdsNFSeTomadorServicoEnderecoUf1: TStringField;
    cdsNFSeTomadorServicoEnderecoCep: TIntegerField;
    cdsNFSeTomadorServicoContato: TADTField;
    cdsNFSeTomadorServicoContatoTelefone: TStringField;
    cdsNFSeTomadorServicoContatoEmail: TStringField;
    cdsNFSeIntermediarioServico: TADTField;
    cdsNFSeIntermediarioServicoRazaoSocial: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpj: TADTField;
    cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField;
    cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField;
    cdsNFSeOrgaoGerador: TADTField;
    cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField;
    cdsNFSeOrgaoGeradorUf2: TStringField;
    dsNFSe: TDataSource;
    xtrNotaDestinada: TXMLTransformProvider;
    cdsNotaDestinada: TClientDataSet;
    dsNotaDestinada: TDataSource;
    cdsNotaDestinadaNSU: TStringField;
    cdsNotaDestinadaschema: TStringField;
    dsNFSeGerarXML: TDataSource;
    pagOperacoes: TPageControl;
    tabNFeOp: TTabSheet;
    tabNFSeOp: TTabSheet;
    tabMDFeOp: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label26: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    edNF: TEdit;
    edCNPJ: TEdit;
    edIE: TEdit;
    edDtEmissao: TDateTimePicker;
    edDtSaida: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbRecibo: TLabel;
    lbNroProtocolo: TLabel;
    btEnviar: TButton;
    btnEnviarNFe: TButton;
    btnBuscarStatus: TButton;
    lbChaveAcesso: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    lbNroProtocoloCancelamento: TLabel;
    Label9: TLabel;
    btCancelar: TButton;
    meJustificativa: TMemo;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    lbChaveNfe: TLabel;
    Button5: TButton;
    edUF: TEdit;
    edModelo: TEdit;
    edSerie: TEdit;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    lbCodBarras: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    lbNroProtocoloInutil: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Button9: TButton;
    meJustificativaI: TMemo;
    edUfI: TEdit;
    edModeloI: TEdit;
    edSerieI: TEdit;
    edAnoI: TEdit;
    edNfeIniI: TEdit;
    edNfeFimI: TEdit;
    Button10: TButton;
    edNroCorrecao: TEdit;
    Button17: TButton;
    chkComErro: TCheckBox;
    TabSheet2: TTabSheet;
    Label27: TLabel;
    labConsRetorno: TLabel;
    edtConsChave: TEdit;
    Button12: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    chkConsSalvarXML: TCheckBox;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    edEmailDestinatario: TEdit;
    GroupBox8: TGroupBox;
    edEmailBCC: TEdit;
    GroupBox9: TGroupBox;
    edAssunto: TEdit;
    edMensagem: TEdit;
    GroupBox10: TGroupBox;
    Button13: TButton;
    ListBoxAnexos: TListBox;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    tabManifestos: TTabSheet;
    lblManChave: TLabel;
    lblCNPJDest: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lblManProtocolo: TLabel;
    lblManDataProtocolo: TLabel;
    btnManBuscarChave: TButton;
    edtManChave: TEdit;
    edtCNPJDest: TEdit;
    cbManEvento: TComboBox;
    edtManJustificativa: TEdit;
    btnEnviarManifestacao: TButton;
    mmoManXML: TMemo;
    tabConsultaCadastro: TTabSheet;
    lblCadArgumento: TLabel;
    cbCadTpArg: TComboBox;
    edCadArgumento: TEdit;
    dgCadConsulta: TDBGrid;
    btnCadConsultar: TButton;
    tabDownloadNFe: TTabSheet;
    Label28: TLabel;
    Label31: TLabel;
    edDNFeCNPJDest: TEdit;
    edDNFeChaveNFe: TEdit;
    btnBaixar: TButton;
    mmoDNFe: TMemo;
    btnDNfeBuscarChave: TButton;
    tbNFSe: TTabSheet;
    lblNFSeCNPJ: TLabel;
    lblNFSeLote: TLabel;
    lblNFSeMunicipio: TLabel;
    lblNFSeNroNotas: TLabel;
    lblNFSeNroRps: TLabel;
    edtNFSeCNPJ: TEdit;
    btnNFSeGerarLote: TButton;
    btnNFSeEnviarLote: TButton;
    btnNFSeConsultarLote: TButton;
    btnNFSeCancelar: TButton;
    mmoNFSeRetorno: TMemo;
    cbxNFSeMunicipio: TComboBox;
    edtNFSeRetEnv: TEdit;
    btnConsutarNFSe: TButton;
    edtNFSeNroNotas: TSpinEdit;
    btnNFSeSalvarRetorno: TButton;
    edtNFSeLote: TSpinEdit;
    edtNFSeNroRps: TSpinEdit;
    chkNFSeGerarComErro: TCheckBox;
    lbxNFSeNotas: TListBox;
    btnNFSeListarNotas: TButton;
    mmoNFSeRecupera: TMemo;
    btnObterNotaPNG: TButton;
    Button18: TButton;
    btnNFSeGerarXML: TButton;
    tabNFSeToCds: TTabSheet;
    dbgNFSeToCds: TDBGrid;
    btnCarregarXML: TButton;
    tabNFCe: TTabSheet;
    lblNFCeCNPJ: TLabel;
    btnGerarQRCode: TButton;
    Panel1: TPanel;
    imgQRCode: TImage;
    edtNFCeCPNJ: TEdit;
    tsDFe: TTabSheet;
    lblDFeCnpj: TLabel;
    lblDFeUf: TLabel;
    lblDFeUltNsuReceb: TLabel;
    lblDFeNSU: TLabel;
    edtDFeCnpj: TEdit;
    edtDFeUf: TEdit;
    edtDFeUltNsuReceb: TEdit;
    DBGrid5: TDBGrid;
    btnDFeDistNsu: TButton;
    mmoDFeXML: TMemo;
    tabNFSeGeraXML: TTabSheet;
    btnNFSeGeraXML: TButton;
    DBGrid6: TDBGrid;
    pagNFSeEx: TPageControl;
    Label32: TLabel;
    edtMDFeCnpj: TEdit;
    Label33: TLabel;
    Bevel1: TBevel;
    pnlMDFe: TPanel;
    pnlMDFeBotoes: TPanel;
    btnMDFeCriarChave: TButton;
    btnMDFeEnviar: TButton;
    Bevel2: TBevel;
    pnlMDFeRetorno: TPanel;
    Label34: TLabel;
    cbMDFeUF: TRzComboBox;
    cbMDFeAmbiente: TRzComboBox;
    Label35: TLabel;
    cbMDFeTipoEmissao: TRzComboBox;
    tbMDFe: TRzToolbar;
    ilMFDe: TImageList;
    BtnClear: TRzToolButton;
    edtMDFeNumero: TRzNumericEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtMDFeSerie: TEdit;
    shMDFe: TJvStrHolder;
    FormStorage1: TFormStorage;
    btnMDFeConsultar: TButton;
    mmoMDFeAssinado: TMemo;
    btnMDFeBuscar: TButton;
    Bevel3: TBevel;
    btnMDFeCancelar: TButton;
    btnMDFeEncerrar: TButton;
    Bevel5: TBevel;
    mmoMDFeRetorno: TMemo;
    btnMDFeConsultarNaoEncerradas: TButton;
    Bevel4: TBevel;
    Bevel6: TBevel;
    btnMDFeIncluirCondutor: TButton;
    btnMDFeConsultarStatusWS: TButton;
    Splitter1: TSplitter;
    btnMDFeConsultarDistInteressado: TButton;
    btnMDFeConsultarDistNSU: TButton;
    btnMDFeGerarXML: TButton;
    Bevel7: TBevel;
    TabSheet4: TTabSheet;
    BitBtn2: TBitBtn;
    Label36: TLabel;
    edtCNPJContabil: TEdit;
    edtCNPJBaixarXML: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    ceUltNSU: TCurrencyEdit;
    Memo2: TMemo;
    xtrloteDistNFeRS: TXMLTransformProvider;
    cdsNotasContador: TClientDataSet;
    ZipMaster1: TZipMaster;
    BitBtn3: TBitBtn;
    Memo3: TMemo;
    IdDecoderMIME1: TIdDecoderMIME;
    Button19: TButton;
    Button20: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure btnEnviarNFeClick(Sender: TObject);
    procedure btnBuscarStatusClick(Sender: TObject);
    procedure btnManBuscarChaveClick(Sender: TObject);
    procedure btnEnviarManifestacaoClick(Sender: TObject);
    procedure btnCadConsultarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure btnDNfeBuscarChaveClick(Sender: TObject);
    procedure btnNFSeGerarLoteClick(Sender: TObject);
    procedure btnNFSeEnviarLoteClick(Sender: TObject);
    procedure btnNFSeConsultarLoteClick(Sender: TObject);
    procedure btnNFSeCancelarClick(Sender: TObject);
    procedure btnConsutarNFSeClick(Sender: TObject);
    procedure btnNFSeSalvarRetornoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNFSeListarNotasClick(Sender: TObject);
    procedure lbxNFSeNotasClick(Sender: TObject);
    procedure btnCarregarXMLClick(Sender: TObject);
    procedure btnObterNotaPNGClick(Sender: TObject);
    procedure btnGerarQRCodeClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure btnDFeDistNsuClick(Sender: TObject);
    procedure cdsNotaDestinadaAfterScroll(DataSet: TDataSet);
    procedure btnNFSeGeraXMLClick(Sender: TObject);
    procedure btnNFSeGerarXMLClick(Sender: TObject);
    procedure btnMDFeCriarChaveClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure btnMDFeEnviarClick(Sender: TObject);
    procedure btnMDFeConsultarClick(Sender: TObject);
    procedure btnMDFeBuscarClick(Sender: TObject);
    procedure btnMDFeCancelarClick(Sender: TObject);
    procedure btnMDFeConsultarNaoEncerradasClick(Sender: TObject);
    procedure btnMDFeEncerrarClick(Sender: TObject);
    procedure btnMDFeIncluirCondutorClick(Sender: TObject);
    procedure btnMDFeConsultarStatusWSClick(Sender: TObject);
    procedure btnMDFeConsultarDistInteressadoClick(Sender: TObject);
    procedure btnMDFeConsultarDistNSUClick(Sender: TObject);
    procedure btnMDFeGerarXMLClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
  private
    { Private declarations }
    FCds: TClientDataSet;
    procedure GerarNFeTXT(AStrings: TStrings);
    function GerarNFSeTXT(ATotal: Integer): String;
    function GerarNFSeCampoBom: String;
    function GerarNFSePortoAlegre: String;
    function GerarNFSeEstanciaVelha: String;
    function Extrair(var ATexto: String; ADelimitador: String): String;
    function GerarMDFeXML(out chave, codigo, digito: string): string;

    function DescompactarTexto(texto:string):string;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  nfe_v110, StrUtils, uNFeConsts, uNFeComandos, uNotasDestinadas,
  uXMLClientDataSet_NFSe_Abrasf20, enviMDFe_v300, mdfeModalAereo_v300,
  mdfeModalAquaviario_v300, mdfeModalFerroviario_v300,
  mdfeModalRodoviario_v300, DateUtils,
  pcnAuxiliar, ACBrNFeUtil;

{$R *.dfm}

function GetNowTimezone: string;
var
  TimeZoneInfo: TTimezoneinformation;
  R: Word;
  Minutes: Integer;
  Sign: string;
begin
  R := GetTimezoneInformation(TimeZoneInfo);
 
  if R in [TIME_ZONE_ID_UNKNOWN, TIME_ZONE_ID_STANDARD, TIME_ZONE_ID_DAYLIGHT] then
  begin
    Minutes := (TimeZoneInfo.Bias + TimeZoneInfo.DaylightBias) * -1;
    if Minutes < 0 then
      Sign := '-'
    else
      Sign := '+';
 
    Result := Sign + FormatDateTime('hh:MM', IncMinute(0, Minutes));
  end
  else
    Result := '';

  Result := FormatDateTime('yyyy-mm-dd"T"hh:nn:ss', Now) + Result;
end;

function LPad(ATxt, AVlr: string; ATam: Integer): string;
var
  I: Integer;
begin
  Result := Atxt;
  for I := 0 to ATam - 1 - Length(ATxt) do
    Result := AVlr + Result;
end;

function RPad(ATxt, AVlr: string; ATam: Integer): string;
var
  I: Integer;
begin
  Result := Atxt;
  for I := 0 to ATam - 1 - Length(ATxt) do
    Result := Result + AVlr;
end;

function CalcModulo11(const S: string): string;
var
  I, Mult, Tot: Integer;
begin
  Tot  := 0;
  Mult := 2;
  for I := Length(S) downto 1 do
  begin
    Tot := Tot + (StrToInt(S[I]) * Mult);
    Inc(Mult);
    if Mult > 9 then Mult := 2;
  end;
  Tot := 11 - (Tot mod 11);
  if Tot > 9 then Tot := 1;
  Result := IntToStr(Tot);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Nota : IXMLTNFe;
  Ide  : nfe_v110.IXMLIde;
  Emit : nfe_v110.IXMLEmit;
  Dest : nfe_v110.IXMLDest;
  Det  : nfe_v110.IXMLDet;
  Total : nfe_v110.IXMLTotal;
  Transp : nfe_v110.IXMLTransp;
begin
  Nota := NewNFe;

(* A *)
  Nota.InfNFe.Versao := '1.10';
  Nota.InfNFe.Id     := 'NFe43090393748523000282550000000069920000069922';

(* B *)
  Ide := Nota.InfNFe.Ide;
  Ide.CUF := '43';
  Ide.CNF := '000069922';
  Ide.NatOp := 'VENDA';
//  Ide.IndPag := '0';
  Ide.Mod_ := '55';
//  Ide.AddChild('mod').Text := '55';
  Ide.Serie := '0';
  Ide.NNF := '6992';
  Ide.DEmi := '2009-03-27';
  Ide.TpNF := '1';
  Ide.CMunFG := '03905';
  Ide.TpImp := '1';
  Ide.TpEmis := 'N';
//  Ide.CDV    := '2';
//  Ide.TpAmb := '2';
  Ide.TpNF := '1';

(* C *)
  Emit := Nota.InfNFe.Emit;
  Emit.CNPJ := '93748523000282';
  Emit.XNome := 'QUIMIGAL INDUSTRIA QUIMICA LTDA';
  Emit.EnderEmit.XLgr := 'RUA FREI PACIFICO';
  Emit.EnderEmit.Nro := '1325';
  Emit.EnderEmit.XBairro := 'BAIRRO PIO X';
  Emit.EnderEmit.CMun := '03905';
  Emit.EnderEmit.XMun := 'CAMPO BOM';
  Emit.EnderEmit.UF := 'RS';
  Emit.EnderEmit.CEP := '93700000';
  Emit.EnderEmit.CPais := '1058';
  Emit.IE := '00';

(* E *)
  Dest := Nota.InfNFe.Dest;
  Dest.CNPJ := '00742829000160';
  Dest.XNome := 'DOMINIUS INFORMATICA LTDA';
  Dest.EnderDest.XLgr := 'RUA JOAO SCHUMANN';
  Dest.EnderDest.Nro := '100';
  Dest.EnderDest.XCpl := 'SALA 201';
  Dest.EnderDest.XBairro := 'CENTRO';
  Dest.EnderDest.CMun := '03905';
  Dest.EnderDest.XMun := 'CAMPO BOM';
  Dest.EnderDest.UF := 'RS';
  Dest.EnderDest.CEP := '93700000';
  Dest.EnderDest.CPais := '1058';

(* H *)
  Det := Nota.InfNFe.Det.Add;
  Det.NItem := '1';

(* I *)
  Det.Prod.CProd := '1';
  Det.Prod.CEAN := '0';
  Det.Prod.XProd := 'PRODUTO TESTE';
  Det.Prod.NCM   := '00030039099';
  Det.Prod.Genero := '0';
  Det.Prod.AddChild('CST').Text := '0';
  Det.Prod.CFOP  := '5101';
//  Det.Prod.UCom  := 'PECAS';
//  Det.Prod.QCom  := '10000';
//  Det.Prod.VUnCom := '10000';
//  Det.Prod.VProd := '10000';
//  Det.Prod.CEANTrib := '';
  Det.Prod.UTrib := 'PECAS';
  Det.Prod.QTrib := '10000';
//  Det.Prod.VUnTrib := '10000';
  Det.Prod.VProd := '10000';
  Det.Prod.VFrete := '0';
  Det.Prod.VSeg := '0';
  Det.Prod.VDesc := '0';

(* N *)
{  Det.Imposto.ICMS.ICMS00.Orig := '0';
  Det.Imposto.ICMS.ICMS00.CST := '00';
  Det.Imposto.ICMS.ICMS00.ModBC := '3';
  Det.Imposto.ICMS.ICMS00.VBC := '10000';
  Det.Imposto.ICMS.ICMS00.PICMS := '1700';
  Det.Imposto.ICMS.ICMS00.VICMS := '17';}
  Det.Imposto.ICMS.AddChild('modBC').Text := '3';
  Det.Imposto.ICMS.AddChild('vBC').Text := '10000';
  Det.Imposto.ICMS.AddChild('pICMS').Text := '1700';
  Det.Imposto.ICMS.AddChild('vICMS').Text := '17';

(* Q *)
//  Det.Imposto.PIS.PISNT.CST := '07';
  Det.Imposto.PIS.AddChild('CST').Text := '07';
  Det.Imposto.PIS.AddChild('vBC').Text := '0';
  Det.Imposto.PIS.AddChild('pPIS').Text := '0';
  Det.Imposto.PIS.AddChild('vPis').Text := '0';

(* S *)
//  Det.Imposto.COFINS.COFINSNT.CST := '07';
  Det.Imposto.COFINS.AddChild('CST').Text := '07';
  Det.Imposto.COFINS.AddChild('vBC').Text := '0';
  Det.Imposto.COFINS.AddChild('pCOFINS').Text := '0';
  Det.Imposto.COFINS.AddChild('vCOFINS').Text := '0';

(* W *)
  Total := Nota.InfNFe.Total;
  Total.ICMSTot.VBC := '10000';
  Total.ICMSTot.VICMS := '17';
  Total.ICMSTot.VBCST := '10000';
  Total.ICMSTot.VST := '17';
  Total.ICMSTot.VProd := '10000';
  Total.ICMSTot.VFrete := '0';
  Total.ICMSTot.VSeg := '0';
  Total.ICMSTot.VDesc := '0';
  Total.ICMSTot.VII := '0';
  Total.ICMSTot.VIPI := '0';
  Total.ICMSTot.VPIS := '0';
  Total.ICMSTot.VCOFINS := '0';
  Total.ICMSTot.VOutro := '0';
  Total.ICMSTot.VNF := '10000';

(* X *)
  Transp := Nota.InfNFe.Transp;
  Transp.ModFrete := '0';
  Transp.Transporta.CNPJ := '82638644000174';
  Transp.Transporta.XNome := 'TRANSPORTES TESTE';
  Transp.Transporta.IE := '1080001953';
  Transp.Transporta.XEnder := 'ENDERECO TRANSPORTADORA';
  Transp.Transporta.XMun := 'CAMPO BOM';
  Transp.Transporta.UF := 'RS';

(* Z *)
//  Nota.InfNFe.InfAdic.InfAdFisco := '';
  Nota.InfNFe.InfAdic.InfCpl := 'INFORMACOES ADICIONAIS';

  XMLDocument1.Active := false;
  XMLDocument1.XML.Text := '<?xml version="1.0" encoding="UTF-8"?>' + Nota.XML;
  XMLDocument1.Active := true;
  // chave de acesso nf-e página 69 5.4
  XMLDocument1.SaveToFile('43090393748523000282550000000069920000069922-nfe.xml');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  Texto : String;
  F     : TextFile;
begin
  AssignFile(F,'N:\NOTANFE.TXT');
  Rewrite(F);
  Texto := 'NOTA FISCAL|1|';
  Writeln(F,Texto);
  Texto := 'A|1.10|NFe|'; // Versão e o literal NFe
  Writeln(F,Texto);
//Cód. da UF, Nat Oper
  Texto := 'B|43| |VENDA MERCADORIA ADQUIRIDA RECEBIDA DE TERCEIROS|';
  {case CondPgto of
    0 : Texto := Texto + '0|'; // À Vista
    1 : Texto := Texto + '1|'; // A Prazo
    2 : Texto := Texto + '2|'; // Outros
  end;}
  Texto := Texto + '0|';
//Utilizar cód. 55
  Texto := Texto + '55|';
// Série, informar zero para série única
  Texto := Texto + '0|';
//Nº da nota
  edNF.Text := IntToStr(StrToIntDef(edNF.Text, 0) + 1);
  Texto := Texto + edNF.Text + '|';
//Data emissão
  Texto := Texto + FormatDateTime('yyy-mm-dd', edDtEmissao.Date) + '|';
//Data de Saída (Opcional)
  Texto := Texto + FormatDateTime('yyy-mm-dd', edDtSaida.Date) + '|';
//Tipo da nota 0 - entrada; 1 - saída
  Texto := Texto + '1|';
//Cód. da UF (43) + Município (04606)
  Texto := Texto + '4304606|';
//Formato de impressão da DANFE, 1 - Retrato; 2 - Paisagem
  Texto := Texto + '1|';
//Forma de emissão da NF-e, 1 - Normal; 2 - Contigência
  Texto := Texto + '1|';
//Dígito Verificador da Chave de Acesso da NF-e (não obrigatório)
  Texto := Texto + ' |';
//Ident. do Ambiente, 1 - Produção; 2 - Homologação
  Texto := Texto + '2|';
//Finalidade da emissão, 1 - NF-e Normal; 2 - NF-e Complementar; 3 - NF-e de Ajuste
  Texto := Texto + '1|';
//Processo de emissão da NF-e, 0 - Emissão com aplicativo do contribuinte; 1 - emissão de NF-e avulsa pelo Fisco;
// 2 - emissão NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco;
// 3 - emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco
  Texto := Texto + '3|';
// Versão do Processo de emissão da NF-e
  Texto := Texto + 'TESTE 1.3.2|';
  Writeln(F,Texto);

// Letra C - Razão Social ou Nome do emitente + Fantasia não obrigatório
  Texto := 'C|PLASTICOS SCORPIO LTDA| |';
//IE - em branco não obrigatório IEST, IM e CNAE
  Texto := Texto + edIE.Text + '| | | |';
  Writeln(F,Texto);

// Letra C02 - cnpj do emitente
  Texto := 'C02|' + edCNPJ.Text + '|';
  Writeln(F,Texto);

// Letra C05 - Logradouro
  Texto := 'C05|RUA OTTO SCHONARDIE|';
// Nº + Complemento não obrigatório
  Texto := Texto + '85| |';
//Bairro
  Texto := Texto + 'CANUDOS|';
//Cód. da UF (43) + Município (04606)
  Texto := Texto + '4313409|';
//Nome do município
  Texto := Texto + 'NOVO HAMBURGO|';
//UF
  Texto := Texto + 'RS|';
//Cep
  Texto := Texto + '93546617|';
//Cód. País
  Texto := Texto + '1058|';
//Nome do País
  Texto := Texto + 'BRASIL|';
//Telefone
  Texto := Texto + '5130359535|';

  Writeln(F,Texto);

//Letra E - Nome do Destinatário
  Texto := 'E|DILLY  NORDESTE S/A  FILIAL 5|';
//IE - Se tiver Inscr. Estadual informar, se não fica ISENTO + Inscr. SUFRAMA (Opcional)
  Texto := Texto + '2570008375| |';
  Writeln(F,Texto);

//Letra E02 se for CNPJ ou E03 se for CPF
  Texto := 'E02|01287588000683|';
  Writeln(F,Texto);

//Letra E05 - Endereço Destinatário + Nº + Complemento (opcional)
  Texto := 'E05|RUA VALDEMAR FLORES VIEIRA|204| |';
//Bairro
  Texto := Texto + 'ESTACAO|';
//Cód. do País (43) + Município (09209)
  Texto := Texto + '4304689|';
//Nome Município
  Texto := Texto + 'CAPELA DE SANTANA|';
//UF
  Texto := Texto + 'RS|';
//Cep
  Texto := Texto + '95745000|';
//Cód. País
  Texto := Texto + '1058|';
//Nome do País
  Texto := Texto + 'BRASIL|';
//Telefone
  Texto := Texto + '5136981266|';
  Writeln(F,Texto);

//Letra G - Local de entrega - Informar apenas quando for diferente do endereço do destinatário.
// CNPJ + ENDEREÇO + Nº + COMPLEMENTO (OPCIONAL) + BAIRRO + CÓD. MUNICÍPIO + NOME MUNICÍPIO + UF

//Letra H - Detalhamento de produtos e serviços - Nº do Item
  Texto := 'H|1|';
//Informações complementares do produto
  Texto := Texto + '(PRODUTO CONTENDO COMPOSTO QUATERNARIO DE AMONIA)|';
  Writeln(F,Texto);

//Letra I - Cód. do Produto
  Texto := 'I|136|';
//GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
  Texto := Texto + ' |';
//Descrição do produto
  Texto := Texto + 'SURTEC ELETROZIN|';
//Código NCM (Opcional) + EX_TIPI (Opcional) + Gênero do Produto ou Serviço (Opcional)
  Texto := Texto + ' | | |';
//Cód. Nat. Oper.
  Texto := Texto + '5102|';
// Unidade de Medida
  Texto := Texto + 'KG|';
//Quantidade Comercial
  Texto := Texto + '1.0000|'; // é 1,00 - são 4 casas decimais
//Valor Unitário de comercialização
  Texto := Texto + '100.0000|'; // é 100,00 - são 4 casas decimais
//Valor Total Bruto dos Produtos ou Serviços
  Texto := Texto + '100.00|'; // é 100,00 - são 2 casas decimais
//GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
  Texto := Texto + ' |';
//Unidade Tributária
  Texto := Texto + 'KG|';
//Quantidade Tributável
  Texto := Texto + '1.0000|';
//Valor Unitário de tributação
  Texto := Texto + '100.0000|';
//Valor Total do Frete + VALOR DO SEGURO + VALOR DO DESCONTO (SÃO OPCIONAIS)
  Texto := Texto + ' | | |';
  Writeln(F,Texto);

//Letra M - Grupo de Tributos incidentes no Produto ou Serviço
  Texto := 'M|';
  Writeln(F,Texto);

//Letra N - ICMS
  Texto := 'N|';
  Writeln(F,Texto);

//CST – 60 - ICMS cobrado anteriormente por substituição tributária (Escolhi este grupo)
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N08|0|';
//Tributação do ICMS
  Texto := Texto + '60|';
//Valor da BC do ICMS ST
  Texto := Texto + '100.00|';
//Valor do ICMS ST
  Texto := Texto + '17.00|';
  Writeln(F,Texto);

//Letra O - IPI - Informar apenas quando o item for sujeito ao IPI  

//Letra Q - PIS - grupo de PIS tributado pela alíquota
  Texto := 'Q|';
  Writeln(F,Texto);

//PIS - grupo de PIS tributado pela alíquota - Código de Situação Tributária do PIS
  Texto := 'Q02|01|';
//vBC Valor da Base de Cálculo do PIS
  Texto := Texto + '0.00|';
//pPIS Alíquota do PIS (em percentual)
  Texto := Texto + '0.00|';
//vPIS Valor do PIS
  Texto := Texto + '0.00|';
  Writeln(F,Texto);

//Letra S - COFINS - grupo de COFINS tributado pela alíquota
  Texto := 'S|';
  Writeln(F,Texto);

//S02 CST Código de Situação Tributária do COFINS
  Texto := 'S02|01|';
//vBC Valor da Base de Cálculo da COFINS
  Texto := Texto + '0.00|';
//pCOFINS Alíquota da COFINS (em percentual)
  Texto := Texto + '0.00|';
//vCOFINS Valor do COFINS
  Texto := Texto + '0.00|';
  Writeln(F,Texto);

//Letra U - ISS - Informar os campos para cálculo do ISSQN nas NFe conjugadas, onde há a prestação de serviços sujeitos ao ISSQN e fornecimento de peças sujeitas ao ICMS

//Letra W - Totais - Grupo de Valores Totais referentes ao ICMS
  Texto := 'W|';
  Writeln(F,Texto);

//Letra W02 - Base de Cálculo do ICMS
  Texto := 'W02|100.00|';
//Valor Total do ICMS
  Texto := Texto + '17.00|';
//Base de Cálculo do ICMS ST
  Texto := Texto + '100.00|';
//Valor Total do ICMS ST
  Texto := Texto + '17.00|';
//Valor Total dos produtos e serviços
  Texto := Texto + '100.00|';
//Valor Total do Frete
  Texto := Texto + '0.00|';
//Valor Total do Seguro
  Texto := Texto + '0.00|';
//Valor Total do Desconto
  Texto := Texto + '0.00|';
//Valor Total do II
  Texto := Texto + '0.00|';
//Valor Total do IPI
  Texto := Texto + '0.00|';
//Valor do PIS
  Texto := Texto + '0.00|';
//Valor do COFINS
  Texto := Texto + '0.00|';
//Outras Despesas acessórias
  Texto := Texto + '0.00|';
//Valor Total da NF-e
  Texto := Texto + '100.00|';
  Writeln(F,Texto);

//Letra X - Transporte
  Texto := 'X|';
//Modalidade do frete; 0 - por conte do emitente; 1 - por conta do destinatário
  Texto := Texto + '1|';
  Writeln(F,Texto);

//Letra X03 - Transportador
  Texto := 'X03|';
//Nome da transportadora
  Texto := Texto + 'SULPLATING - HYUNDAI HR 2.5 TCI RD BRANCO DIESEL 2008|';
//Inscrição Estadual
  Texto := Texto + '0430106742|';
//Endereço Completo
  Texto := Texto + 'RUA PEDRO ALVARES CABRAL, 33|';
//Sigla da UF
  Texto := Texto + 'RS|';
//Município
  Texto := Texto + 'ESTEIO|';
  Writeln(F,Texto);

//Letra X04 se for CNPJ ou X05 se for CPF
  Texto := 'X04|06231471000197|';
  Writeln(F,Texto);

//Letra X18 - Veículo - Placa do Veículo
  Texto := 'X18|IOL9298|';
//Sigla da UF + Registro Nacional de Transportador de Carga (ANTT) (Opcional)
  Texto := Texto + 'RS| |';
  Writeln(F,Texto);

//Letra X26 - Volumes
  Texto := 'X26|';
//Quantidade de volumes transportados
  Texto := Texto + '5|';
//Espécie dos volumes transportados
  Texto := Texto + 'VOLUMES|';
//Marca dos volumes transportados
  Texto := Texto + 'SURTEC|';
//Numeração dos volumes transportados
  Texto := Texto + '10|';
//Peso Líquido (em kg)
  Texto := Texto + '90.000|';
//Peso Bruto (em kg)
  Texto := Texto + '100.000|';
  Writeln(F,Texto);

////Letra Y - Cobrança
//  Texto := 'Y|';
//  Writeln(F,Texto);
  CloseFile(F);
end;

procedure TForm1.GerarNFeTXT(AStrings: TStrings);
var
  Texto: string;
begin
  AStrings.Clear;

  AStrings.Add('NOTA FISCAL|1|');
  AStrings.Add('A|2.00|NFe|');
  AStrings.Add('B|' + edUF.Text + '||VENDA DE PRODUCAO DO ESTABELECIMENTO|1|' +  edModelo.Text + '|' + edSerie.Text +  '|' + edNF.Text +  '|' + FormatDateTime('yyy-mm-dd', edDtEmissao.Date) + '|||1|4313409|1|1||2|1|0|2.0.4|||');
  AStrings.Add('C|PLASTICOS SCORPIO LTDA| |0860155404| | | |3|');
//  AStrings.Add('C|NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL| |0860155404| | | |3|');
  AStrings.Add('C02|92758762000170|');
//  AStrings.Add('C02|99999999000191|');
  AStrings.Add('C05|RUA OTTO SCHONARDIE|85| |CANUDOS|4313409|NOVO HAMBURGO|RS|93546617|1058|BRASIL|0005130359535|');
//  AStrings.Add('E|DILLY  NORDESTE S/A  FILIAL 5|2570008375| |cleomar@servisoft.com.br|');
  AStrings.Add('E|NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL|| |cleomar@servisoft.com.br|');
  //  AStrings.Add('E02|06698546000144|');
//  AStrings.Add('E05|RUA VALDEMAR FLORES VIEIRA|204||ESTACAO|4304689|CAPELA DE SANTANA|RS|95745000|1058|BRASIL|00005136981266|');
  AStrings.Add('E02|06867468000164|');
  AStrings.Add('E05|RUA VALDEMAR FLORES VIEIRA|204||ESTACAO|4304689|CAPELA DE SANTANA|RS|95745000|1058|BRASIL|00005136981266|');
  AStrings.Add('H|1||');
  AStrings.Add('I|3980.1||ESTAB RUNNING SUPER ACTION VII PVC PRETO T1D|64061000||5101|PC|5.0000|3.0000|15.00||PC|5.0000|3.0000|0.00|0.00||0.00|1|||');
  AStrings.Add('M|');
  AStrings.Add('N|');
  AStrings.Add('N02|0|00|0|15.00|17.00|2.55|');
  AStrings.Add('O|||||999|');
  AStrings.Add('O07|50|0.00|');
  AStrings.Add('O10|15.00|0.00|');
  AStrings.Add('Q|');
  AStrings.Add('Q04|07|');
  AStrings.Add('S|');
  AStrings.Add('S04|07|');
  AStrings.Add('W|');
  AStrings.Add('W02|15.00|2.55|0.00|0.00|15.00|0.00|0.00|0.00|0.00|0.00|0.00|0.00|0.00|15.00|');
  AStrings.Add('X|9|');
  if chkComErro.Checked then
    AStrings.Add('X26|0|VOLUMES|||0.117|0.124|')
  else
    AStrings.Add('X26|1|VOLUMES|||0.117|0.124|');
  AStrings.Add('Y|');
  AStrings.Add('Y07|3465/1|2011-06-04|15.00|');
  AStrings.Add('Z||END.COBR. RUA MARCILIO DIAS, 10 - CENTRO - SAUDADE  - 89868-000 - SC |');
  Exit;



  Texto := 'NOTA FISCAL|1|';
  AStrings.Add(Texto);

  Texto := 'A|2.00|NFe|'; // Versão e o literal NFe
  AStrings.Add(Texto);

  //Cód. da UF, Nat Oper
  Texto := 'B|' + edUF.Text + '| |VENDA MERCADORIA ADQUIRIDA RECEBIDA DE TERCEIROS|';
  {case CondPgto of
    0 : Texto := Texto + '0|'; // À Vista
    1 : Texto := Texto + '1|'; // A Prazo
    2 : Texto := Texto + '2|'; // Outros
  end;}
  Texto := Texto + '0|';
  //Utilizar cód. 55
  Texto := Texto +  edModelo.Text + '|';
  // Série, informar zero para série única
  Texto := Texto + edSerie.Text +  '|';
  //Nº da nota
  edNF.Text := IntToStr(StrToIntDef(edNF.Text, 0) + 1);
  Texto := Texto + edNF.Text + '|';
  //Data emissão
  Texto := Texto + FormatDateTime('yyy-mm-dd', edDtEmissao.Date) + '|';
  //Data de Saída (Opcional)
  Texto := Texto + FormatDateTime('yyy-mm-dd', edDtSaida.Date) + '|';
  //Hora de Saída
  Texto := Texto + FormatDateTime('hh:nn:ss', Now) + '|';
  //Tipo da nota 0 - entrada; 1 - saída
  Texto := Texto + '1|';
  //Cód. da UF (43) + Município (04606)
  Texto := Texto + '4304606|';
  //Formato de impressão da DANFE, 1 - Retrato; 2 - Paisagem
  Texto := Texto + '1|';
  //Forma de emissão da NF-e, 1 - Normal; 2 - Contigência
  Texto := Texto + '1|';
  //Dígito Verificador da Chave de Acesso da NF-e (não obrigatório)
  Texto := Texto + ' |';
  //Ident. do Ambiente, 1 - Produção; 2 - Homologação
  Texto := Texto + '2|';
  //Finalidade da emissão, 1 - NF-e Normal; 2 - NF-e Complementar; 3 - NF-e de Ajuste
  Texto := Texto + '1|';
  //Processo de emissão da NF-e, 0 - Emissão com aplicativo do contribuinte; 1 - emissão de NF-e avulsa pelo Fisco;
  // 2 - emissão NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco;
  // 3 - emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco
  Texto := Texto + '3|';
  // Versão do Processo de emissão da NF-e
  Texto := Texto + 'TESTE 1.3.2| | |';
  AStrings.Add(Texto);

  // Letra C - Razão Social ou Nome do emitente + Fantasia não obrigatório
  Texto := 'C|PLASTICOS SCORPIO LTDA| |';
  //IE - em branco não obrigatório IEST, IM e CNAE
  Texto := Texto + edIE.Text + '| | | |1|';
  AStrings.Add(Texto);

  // Letra C02 - cnpj do emitente
  Texto := 'C02|' + edCNPJ.Text + '|';
  AStrings.Add(Texto);

  // Letra C05 - Logradouro
  Texto := 'C05|RUA OTTO SCHONARDIE|';
  // Nº + Complemento não obrigatório
  Texto := Texto + '85| |';
  //Bairro
  Texto := Texto + 'CANUDOS|';
  //Cód. da UF (43) + Município (04606)
  Texto := Texto + '4313409|';
  //Nome do município
  Texto := Texto + 'NOVO HAMBURGO|';
  //UF
  Texto := Texto + 'RS|';
  //Cep
  Texto := Texto + '93546617|';
  //Cód. País
  Texto := Texto + '1058|';
  //Nome do País
  Texto := Texto + 'BRASIL|';
  //Telefone
  Texto := Texto + '5130359535|';
  AStrings.Add(Texto);

  //Letra E - Nome do Destinatário
  Texto := 'E|DILLY  NORDESTE S/A  FILIAL 5|';
  //IE - Se tiver Inscr. Estadual informar, se não fica ISENTO + Inscr. SUFRAMA (Opcional)
  Texto := Texto + '2570008375| | |';
  AStrings.Add(Texto);

  //Letra E02 se for CNPJ ou E03 se for CPF
  Texto := 'E02|01287588000683|';
  AStrings.Add(Texto);

  //Letra E05 - Endereço Destinatário + Nº + Complemento (opcional)
  Texto := 'E05|RUA VALDEMAR FLORES VIEIRA|204| |';
  //Bairro
  Texto := Texto + 'ESTACAO|';
  //Cód. do País (43) + Município (09209)
  Texto := Texto + '4304689|';
  //Nome Município
  Texto := Texto + 'CAPELA DE SANTANA|';
  //UF
  Texto := Texto + 'RS|';
  //Cep
  Texto := Texto + '95745000|';
  //Cód. País
  Texto := Texto + '1058|';
  //Nome do País
  Texto := Texto + 'BRASIL|';
  //Telefone
  Texto := Texto + '5136981266|';
  AStrings.Add(Texto);

  //Letra G - Local de entrega - Informar apenas quando for diferente do endereço do destinatário.
  // CNPJ + ENDEREÇO + Nº + COMPLEMENTO (OPCIONAL) + BAIRRO + CÓD. MUNICÍPIO + NOME MUNICÍPIO + UF

  //Letra H - Detalhamento de produtos e serviços - Nº do Item
  Texto := 'H|1|';
  //Informações complementares do produto
  Texto := Texto + '(PRODUTO CONTENDO COMPOSTO QUATERNARIO DE AMONIA)|';
  AStrings.Add(Texto);

//I|CProd|CEAN|XProd|NCM|EXTIPI|CFOP|UCom|QCom|VUnCom|VProd|CEANTrib|UTrib|QTrib|VUnTrib|VFrete|VSeg|VDesc|vOutro|indTot|xPed|nItemPed|


  //Letra I - Cód. do Produto
  Texto := 'I|136|';
  //GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
  Texto := Texto + ' |';
  //Descrição do produto
  Texto := Texto + 'SURTEC ELETROZIN|';
  //Código NCM (Opcional) + EX_TIPI (Opcional) + Gênero do Produto ou Serviço (Opcional)
  Texto := Texto + '99| |5102|';
  //Cód. Nat. Oper.
  Texto := Texto + 'KG|';
  //Quantidade Comercial
  Texto := Texto + '1|';
  //Valor Unitario
  Texto := Texto + '100.00|';
  //Valor Total
  Texto := Texto + '100.00|';
  //GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
  Texto := Texto + ' |';
  //Unidade Tributária
  Texto := Texto + 'KG|';
  //Quantidade Tributável
  Texto := Texto + '1|';
  //Valor Unitário de tributação
  Texto := Texto + '100.00|';
  //Valor Total do Frete + VALOR DO SEGURO + VALOR DO DESCONTO (SÃO OPCIONAIS)
  Texto := Texto + ' | | | | | | |';
  AStrings.Add(Texto);

  //Letra M - Grupo de Tributos incidentes no Produto ou Serviço
  Texto := 'M|';
  AStrings.Add(Texto);

  //Letra N - ICMS
  Texto := 'N|';
  AStrings.Add(Texto);

  //CST – 51
  //Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N07|0|';
  //Tributação do ICMS
  Texto := Texto + '51|';
  Texto := Texto + '3|0|0.00|0|0.00|';
  AStrings.Add(Texto);

{
  //CST – 60 - ICMS cobrado anteriormente por substituição tributária (Escolhi este grupo)
  //Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N08|0|';
  //Tributação do ICMS
  Texto := Texto + '60|';
  //Valor da BC do ICMS ST
  Texto := Texto + '100.00|';
  //Valor do ICMS ST
  Texto := Texto + '17.00|';
  AStrings.Add(Texto);
}
  //Letra O - IPI - Informar apenas quando o item for sujeito ao IPI

  //Letra Q - PIS - grupo de PIS tributado pela alíquota
  Texto := 'Q|';
  AStrings.Add(Texto);

  //PIS - grupo de PIS tributado pela alíquota - Código de Situação Tributária do PIS
  Texto := 'Q02|01|';
  //vBC Valor da Base de Cálculo do PIS
  Texto := Texto + '0.00|';
  //pPIS Alíquota do PIS (em percentual)
  Texto := Texto + '0.00|';
  //vPIS Valor do PIS
  Texto := Texto + '0.00|';
  AStrings.Add(Texto);

  //Letra S - COFINS - grupo de COFINS tributado pela alíquota
  Texto := 'S|';
  AStrings.Add(Texto);

  //S02 CST Código de Situação Tributária do COFINS
  Texto := 'S02|01|';
  //vBC Valor da Base de Cálculo da COFINS
  Texto := Texto + '0.00|';
  //pCOFINS Alíquota da COFINS (em percentual)
  Texto := Texto + '0.00|';
  //vCOFINS Valor do COFINS
  Texto := Texto + '0.00|';
  AStrings.Add(Texto);

  //Letra U - ISS - Informar os campos para cálculo do ISSQN nas NFe conjugadas, onde há a prestação de serviços sujeitos ao ISSQN e fornecimento de peças sujeitas ao ICMS

  //Letra W - Totais - Grupo de Valores Totais referentes ao ICMS
  Texto := 'W|';
  AStrings.Add(Texto);

  //Letra W02 - Base de Cálculo do ICMS
  Texto := 'W02|0.00|';
  //Valor Total do ICMS
  Texto := Texto + '0.00|';
  //Base de Cálculo do ICMS ST
  Texto := Texto + '0.00|';
  //Valor Total do ICMS ST
  Texto := Texto + '0.00|';
  //Valor Total dos produtos e serviços
  Texto := Texto + '0.00|';
  //Valor Total do Frete
  Texto := Texto + '0.00|';
  //Valor Total do Seguro
  Texto := Texto + '0.00|';
  //Valor Total do Desconto
  Texto := Texto + '0.00|';
  //Valor Total do II
  Texto := Texto + '0.00|';
  //Valor Total do IPI
  Texto := Texto + '0.00|';
  //Valor do PIS
  Texto := Texto + '0.00|';
  //Valor do COFINS
  Texto := Texto + '0.00|';
  //Outras Despesas acessórias
  Texto := Texto + '0.00|';
  //Valor Total da NF-e
  Texto := Texto + '100.00|';
  AStrings.Add(Texto);

  //Letra X - Transporte
  Texto := 'X|';
  //Modalidade do frete; 0 - por conte do emitente; 1 - por conta do destinatário
  Texto := Texto + '1|';
  AStrings.Add(Texto);

  //Letra X03 - Transportador
  Texto := 'X03|';
  //Nome da transportadora
  Texto := Texto + 'SULPLATING - HYUNDAI HR 2.5 TCI RD BRANCO DIESEL 2008|';
  //Inscrição Estadual
  Texto := Texto + '0430106742|';
  //Endereço Completo
  Texto := Texto + 'RUA PEDRO ALVARES CABRAL, 33|';
  //Sigla da UF
  Texto := Texto + 'RS|';
  //Município
  Texto := Texto + 'ESTEIO|';
  AStrings.Add(Texto);

  //Letra X04 se for CNPJ ou X05 se for CPF
  Texto := 'X04|06231471000197|';
  AStrings.Add(Texto);

  //Letra X18 - Veículo - Placa do Veículo
  Texto := 'X18|IOL9298|';
  //Sigla da UF + Registro Nacional de Transportador de Carga (ANTT) (Opcional)
  Texto := Texto + 'RS| |';
  AStrings.Add(Texto);

  //Letra X26 - Volumes
  Texto := 'X26|';
  //Quantidade de volumes transportados
  Texto := Texto + '5|';
  //Espécie dos volumes transportados
  Texto := Texto + 'VOLUMES|';
  //Marca dos volumes transportados
  Texto := Texto + 'SURTEC|';
  //Numeração dos volumes transportados
  Texto := Texto + '10|';
  //Peso Líquido (em kg)
  Texto := Texto + '90.000|';
  //Peso Bruto (em kg)
  Texto := Texto + '100.000|';
  AStrings.Add(Texto);

  ////Letra Y - Cobrança
  //  Texto := 'Y|';
  //  AStrings.Add(Texto);
end;

procedure TForm1.btEnviarClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  ConvTXT2XML: Boolean;
  CodigoErro: integer;
  MensagemErro: string;
  nota: integer;
begin
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  try
    ConvTXT2XML := (MessageDlg('Deseja enviar TXT?', mtConfirmation, [mbYes, mbNo], 0) = mrYes);

    if ConvTXT2XML then
      GerarNFeTXT(oNFe)
    else
      oNFe.Add( Memo1.Text );

    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;
//    oNFeStream.LoadFromFile('N:\NFe_Com Erro\NFe_01_33289.xml');

    EnviaNFe( 'localhost',
              edCNPJ.Text,
              oNFeStream,
              Recibo,
              NroProtocolo,
              ChaveAcesso,
              False,
              ConvTXT2XML,
              CodigoErro,
              MensagemErro );

    lbRecibo.Caption       := Recibo;
    lbNroProtocolo.Caption := NroProtocolo;
    lbChaveAcesso.Text  := ChaveAcesso;
    oNFeStream.Position    := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);

    if (CodigoErro > 0) then
      raise Exception.Create(MensagemErro);

    edNF.Text := IntToStr(StrToIntDef(edNF.Text, 0) + 1);
  finally
    FreeAndNil(oNFeStream);
    FreeAndNil(oNfe);
  end;
end;

procedure TForm1.btCancelarClick(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  oNFeStream := TMemoryStream.Create;
  try
    CancelaNFe( 'localhost',
                edCNPJ.Text,
                lbNroProtocolo.Caption,
                lbChaveAcesso.Text,
                meJustificativa.Text,
                NroProtocolo,
                oNFeStream,
                False, False );

    lbNroProtocoloCancelamento.Caption := NroProtocolo;
    oNFeStream.Position                := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);
  finally
    FreeAndNil(oNFeStream);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if VerificaStatusNFe('localhost', edCNPJ.Text, False) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if VerificaStatusNFe('localhost', edCNPJ.Text, True) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if ConectadoInternet('localhost', edCNPJ.Text) then
    ShowMessage('Conectado')
  else
    ShowMessage('Não conectado');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  ChaveNfe: string;
begin
  ChaveNfe := CriaChaveNFe( 'localhost',
                            edCNPJ.Text,
                            edDtEmissao.DateTime,
                            edUF.Text,
                            edModelo.Text,
                            edSerie.Text,
                            edNF.Text,
                            '1',
                            False );

   lbChaveNfe.Caption := ChaveNfe;
   lbChaveAcesso.Text := ChaveNfe;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  { Informações retidas da página  4 do link:
    http://www.nfe.fazenda.gov.br/portal/docs/NT_2009.003_Preenchimento_de_campos_e_codigo_de_barras_auxiliar.pdf }
  lbCodBarras.Caption := GeraCodigoBarras( 'localhost',
                                           edCNPJ.Text,
                                           '43',                // UF
                                           edCNPJ.Text,         //CNPJ Destinatário, Remetente ou zeros
                                           100.00,              // Valor Total da NF-e
                                           teContFS,            // Tipo emissão: Contingência FS ou Contingência FSDA
                                           icSemDestaque,       // Destaque de ICMS próprio na NF-e: há destaque de ICMS próprio ou não há destaque de ICMS próprio
                                           icSemDestaque,       // Destaque de ICMS por substituição tributária na NF-e: há destaque de ICMS por substituição tributária ou não há destaque de ICMS por substituição tributária
                                           edDtEmissao.DateTime // Data de emissão, será utilizado internamente o dia
                                         );
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Protocolo: String;
begin
  if SameText(Trim(lbChaveNfe.Caption), EmptyStr) then
    raise Exception.Create('Crie primeiro a chave de acesso pelo botão "Gera Chave NFe".');

  lbRecibo.Caption       := EmptyStr;
  lbNroProtocolo.Caption := EmptyStr;
  lbChaveAcesso.Text     := EmptyStr;

  Protocolo := NFe_Consultar( 'localhost',
                              edCNPJ.Text,
                              lbChaveNfe.Caption,
                              False, False );

  lbNroProtocolo.Caption := Protocolo;
  lbChaveAcesso.Text     := lbChaveNfe.Caption;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  if OpenDialog.Execute then
  begin
    Stream := TMemoryStream.Create;
    try
      Stream.LoadFromFile(OpenDialog.FileName);
      NFe_AdicionaProtNFe( 'localhost',
                           edCNPJ.Text,
                           Stream,
                           False );

      Stream.Position := 0;
//      Stream.SaveToFile(...);
      Memo1.Lines.LoadFromStream(Stream);
    finally
      FreeAndNil(Stream);
    end;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edDtEmissao.Date := Now;
  edDtSaida.Date := Now;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  oNFeStream := TMemoryStream.Create;
  try
    InutilizaNFe( 'localhost',
                  edCNPJ.Text,
                  edUfI.Text,
                  edAnoI.Text,
                  edModeloI.Text,
                  edSerieI.Text,
                  edNfeIniI.Text,
                  edNfeFimI.Text,
                  meJustificativa.Text,
                  NroProtocolo,
                  oNFeStream,
                  False );

    lbNroProtocoloInutil.Caption := NroProtocolo;
    oNFeStream.Position          := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);
  finally
    FreeAndNil(oNFeStream);
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  Stream, DANFE: TMemoryStream;
  Arquivo: string;
begin
  if OpenDialog.Execute then
  begin
    Stream := TMemoryStream.Create;
    DANFE := TMemoryStream.Create;
    try
      Stream.LoadFromFile(OpenDialog.FileName);
      //AbrirUTF8(OpenDialog.FileName, Stream);
      Stream.Position := 0;

      NFe_GerarDANFE( 'localhost',
                      edCNPJ.Text,
                      '',
                      '',
                      Stream,
                      DANFE );

      Arquivo := ExtractFilePath(Application.ExeName) + '\DANFE.pdf';
      if FileExists(Arquivo) then
        DeleteFile(Arquivo);

      DANFE.Position := 0;
      DANFE.SaveToFile(Arquivo);
    finally
      FreeAndNil(DANFE);
      FreeAndNil(Stream);
    end;
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  XML: TMemoryStream;
  Ret: string;
begin
  XML := TMemoryStream.Create;
  try
    Ret := EnviarCartaCorrecao( 'localhost',
                                edCNPJ.Text,
                                lbChaveAcesso.Text,
                                meJustificativa.Text,
                                StrToIntDef(edNroCorrecao.Text, 1),
                                False,
                                XML );

    lbNroProtocoloCancelamento.Caption := Ret;
    Memo1.Clear;
    XML.Position := 0;
    Memo1.Lines.LoadFromStream(XML);
  finally
    FreeAndNil(XML);
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  oNFeStream: TMemoryStream;
  oStrStream: TStringStream;
begin
  cdsConsultaNFe.Close;

  oNFeStream := TMemoryStream.Create;
  try
    labConsRetorno.Caption := ConsultarNFe( 'localhost',
                                            edCNPJ.Text,
                                            edtConsChave.Text,
                                            oNFeStream,
                                            False, False );

    oNFeStream.Position := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);

    oStrStream := TStringStream.Create('');
    try
      oNFeStream.Position := 0;
      oStrStream.CopyFrom(oNFeStream, oNFeStream.Size);
      xtrConsultaNFe.TransformRead.SourceXml := oStrStream.DataString;
      xtrConsultaNFe.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaNFe.xtr';

      if chkConsSalvarXML.Checked then
      begin
        if FileExists('c:\a\man_'+edtConsChave.Text+'.xml') then
          DeleteFile('c:\a\man_'+edtConsChave.Text+'.xml');
        oNFeStream.Position := 0;
        oNFeStream.SaveToFile('c:\a\man_'+edtConsChave.Text+'.xml');
      end;
    finally
      FreeAndNil(oStrStream);
    end;
  finally
    FreeAndNil(oNFeStream);
  end;

  cdsConsultaNFe.Open;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  i:integer;
begin
  OpenDialog1.Filter := 'All Files (*.*)|*.*';
  Opendialog1.Title:='Selecionar anexos do e-mail';

  if OpenDialog1.Execute then            { Display Open dialog box }
  begin
    for i := 0 to openDialog1.Files.Count-1 do
    begin
     ListBoxAnexos.AddItem( OpenDialog1.Files[i], nil );
    end;

    if ListBoxAnexos.Count > 0 then
      ListBoxAnexos.ItemIndex := 0;
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if ListBoxAnexos.ItemIndex > -1 then
  begin
    ListBoxAnexos.DeleteSelected;
    if ListBoxAnexos.Count > 0 then
      ListBoxAnexos.ItemIndex := 0;
  end;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  ListBoxAnexos.Clear;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  EnviarEmail( 'localhost',
               edCNPJ.Text,
               edEmailDestinatario.Text,
               edEmailBCC.Text,
               edAssunto.Text,
               edMensagem.Text,
               ListBoxAnexos.Items );

  ShowMessage('E-mail enviado com sucesso.');
  edAssunto.Clear;
  edMensagem.Clear;
  ListBoxAnexos.Clear;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  if OpenDialog.Execute then
  begin
    Stream := TMemoryStream.Create;
    try
      Stream.LoadFromFile(OpenDialog.FileName);
      Stream.Position := 0;

      ImportarNFeFornecedor( 'localhost',
                             edCNPJ.Text,
                             Stream );

      ShowMessage('NFe do Fornecedor importada com sucesso.');
    finally
      FreeAndNil(Stream);
    end;
  end;
end;

procedure TForm1.btnEnviarNFeClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  ConvTXT2XML: Boolean;
  CodigoErro: integer;
  MensagemErro: string;
begin
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  try
    GerarNFeTXT(oNFe);
    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;
//    oNFeStream.LoadFromFile('N:\NFe_Com Erro\NFe_01_33289.xml');

    lbChaveAcesso.Text := EnviarNFe( 'localhost',
                                     edCNPJ.Text,
                                     oNFeStream,
                                     False, '', '' );

    edNF.Text := IntToStr(StrToIntDef(edNF.Text, 0) + 1);
  finally
    FreeAndNil(oNFeStream);
    FreeAndNil(oNfe);
  end;
end;

procedure TForm1.btnBuscarStatusClick(Sender: TObject);
var
  oNFeStream: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  ConvTXT2XML: Boolean;
  CodigoErro: integer;
  MensagemErro: string;
begin
  oNFeStream := TMemoryStream.Create;
  try
    BuscarStatusNF( 'localhost',
                    edCNPJ.Text,
                    lbChaveAcesso.Text,
                    False,
                    False,
                    oNFeStream,
                    Recibo,
                    NroProtocolo,
                    CodigoErro,
                    MensagemErro );

    lbRecibo.Caption       := Recibo;
    lbNroProtocolo.Caption := NroProtocolo;
    oNFeStream.Position    := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);

    if (CodigoErro > 0) then
      raise Exception.Create(MensagemErro);
  finally
    FreeAndNil(oNFeStream);
  end;
end;

procedure TForm1.btnManBuscarChaveClick(Sender: TObject);
var
  Frm: TfrmNFeDestinadas;
begin
  Frm := TfrmNFeDestinadas.Create(nil);
  try
    Frm.CNPJ := edtCNPJDest.Text;
    if (Frm.ShowModal = mrOK) then
      edtManChave.Text := Frm.ChaveAcesso;
  finally
    FreeAndNil(Frm);
  end;
end;

procedure TForm1.btnEnviarManifestacaoClick(Sender: TObject);
var
  RetXml: TMemoryStream;
  Protocolo: string;
  DtProtocolo: string;
begin
  mmoManXML.Clear;

  RetXml := TMemoryStream.Create;
  try
    EnviarManifestacao('localhost',
                       edtCNPJDest.Text,
                       edtManChave.Text,
                       cbManEvento.ItemIndex,
                       edtManJustificativa.Text,
                       False,
                       RetXml,
                       Protocolo,
                       DtProtocolo);

    lblManProtocolo.Caption := 'Protocolo: ' + Protocolo;
    lblManDataProtocolo.Caption := 'Data Protocolo: ' + DtProtocolo;

    RetXml.Position := 0;
    mmoManXML.Lines.LoadFromStream(RetXml);
  finally
    FreeAndNil(RetXml);
  end;
end;

procedure TForm1.btnCadConsultarClick(Sender: TObject);
var
  oStream: TMemoryStream;
  oStrStream: TStringStream;
begin
  cdsConsultaCadastro.Close;

  oStream := TMemoryStream.Create;
  try
    ConsultarCadastro( 'localhost',
                       edCNPJ.Text,
                       cbCadTpArg.ItemIndex,
                       'RS',
                       edCadArgumento.Text,
                       oStream);

    oStream.Position := 0;

    oStrStream := TStringStream.Create('');
    try
      oStream.Position := 0;
      oStrStream.CopyFrom(oStream, oStream.Size);
      xtrConsultaCadastro.TransformRead.SourceXml := oStrStream.DataString;
      xtrConsultaCadastro.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaCadastro.xtr';
    finally
      FreeAndNil(oStrStream);
    end;
  finally
    FreeAndNil(oStream);
  end;

  cdsConsultaCadastro.Open;
end;

procedure TForm1.btnBaixarClick(Sender: TObject);
var
  oStream: TMemoryStream;
  oStrStream: TStringStream;
begin
  mmoDNFe.Clear;

  oStream := TMemoryStream.Create;
  try
    DownloadNFe( 'localhost',
                 edDNFeCNPJDest.Text,
                 edDNFeChaveNFe.Text,
                 oStream );

    oStream.Position := 0;
    mmoDNFe.Lines.LoadFromStream(oStream);
  finally
    FreeAndNil(oStream);
  end;
end;

procedure TForm1.btnDNfeBuscarChaveClick(Sender: TObject);
var
  Frm: TfrmNFeDestinadas;
begin
  Frm := TfrmNFeDestinadas.Create(nil);
  try
    Frm.CNPJ := edDNFeCNPJDest.Text;
    if (Frm.ShowModal = mrOK) then
      edDNFeChaveNFe.Text := Frm.ChaveAcesso;
  finally
    FreeAndNil(Frm);
  end;
end;

procedure TForm1.btnNFSeGerarLoteClick(Sender: TObject);
var
  sTXT: string;
  cTXT: TStringStream;
  cTXTStream: TMemoryStream;
  cXMLStream: TMemoryStream;
  I: Integer;
begin
  if cbxNFSeMunicipio.ItemIndex = 2 then
    raise Exception.Create('Não suportado para Campo Bom.');

  cTXTStream := TMemoryStream.Create;
  cXMLStream := TMemoryStream.Create;
  try
    sTXT := '';
    for I := 1 to edtNFSeNroNotas.Value do
    begin
      if (I > 1) then
        sTxt := #13;
      sTxt := sTxt + GerarNFSeTXT(I - 1);
    end;

    cTXT := TStringStream.Create(sTXT);
    try
      cTXT.Position := 0;
      cTXTStream.CopyFrom(cTXT, cTXT.Size);
    finally
      FreeAndNil(cTXT);
    end;

    cTXTStream.Position := 0;
    NFSe_GerarLote( 'localhost',
                    edtNFSeCNPJ.Text,
                    edtNFSeLote.Text,
                    cTXTStream,
                    cXMLStream );

    cXMLStream.Position := 0;
    mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
  finally
    FreeAndNil(cXMLStream);
    FreeAndNil(cTXTStream);
  end;
end;

procedure TForm1.btnNFSeEnviarLoteClick(Sender: TObject);
var
  sTXT: string;
  cTXT: TStringStream;
  cTXTStream: TMemoryStream;
  cXMLStream: TMemoryStream;
  I: Integer;
begin
  cTXTStream := TMemoryStream.Create;
  cXMLStream := TMemoryStream.Create;
  try
    sTXT := '';
    for I := 1 to edtNFSeNroNotas.Value do
    begin
      if (I > 1) then
        sTxt := #13;
      sTxt := sTxt + GerarNFSeTXT(I - 1);
    end;

    cTXT := TStringStream.Create(sTXT);
    try
      cTXT.Position := 0;
      cTXTStream.CopyFrom(cTXT, cTXT.Size);
    finally
      FreeAndNil(cTXT);
    end;

    cTXTStream.Position := 0;
    edtNFSeRetEnv.Text := NFSe_EnviarLote( 'localhost',
                                           edtNFSeCNPJ.Text,
                                           edtNFSeLote.Text,
                                           cTXTStream,
                                           cXMLStream );

    cXMLStream.Position := 0;
    mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

    edtNFSeLote.Value := edtNFSeLote.Value + 1;
    edtNFSeNroRps.Value := edtNFSeNroRps.Value + edtNFSeNroNotas.Value;
  finally
    FreeAndNil(cXMLStream);
    FreeAndNil(cTXTStream);
  end;
end;

procedure TForm1.btnNFSeConsultarLoteClick(Sender: TObject);
var
  cXMLStream: TMemoryStream;
  LoteProtocolo: String;
  I: Integer;
begin
  if cbxNFSeMunicipio.ItemIndex = 2 then
    LoteProtocolo := InputBox('Consulta Lote NFS-e','Informe o lote: ', '')
  else
    LoteProtocolo := InputBox('Consulta Lote NFS-e','Informe o protocolo ou número do lote: ', '');

  cXMLStream := TMemoryStream.Create;
  try
    mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

    try
      NFSe_ConsultarLote( 'localhost',
                          edtNFSeCNPJ.Text,
                          LoteProtocolo,
                          cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    except
      on E: EExceptionNFSe do
      begin
        for I := 0 to E.Count - 1 do
        begin
          if E.Erro[I].Codigo = 'L014' then
            // limpar protocolo
          else
            raise;
        end;
      end;
    end;
  finally
    FreeAndNil(cXMLStream);
  end;
end;

procedure TForm1.btnNFSeCancelarClick(Sender: TObject);
var
  cXMLStream: TMemoryStream;
  NumeroNFSe, CodigoCancelamento, MotivoCancelamento: String;
  cMunicipio: String;
begin
  if cbxNFSeMunicipio.ItemIndex = 2 then
  begin
    NumeroNFSe         := InputBox('Cancela NFS-e', 'Informe o Lote: ', '' );
    CodigoCancelamento := InputBox('Cancela NFS-e', 'Informe o Codigo de cancelamento: ' + sLineBreak +
                                   '1 - para indicar Serviço não foi prestado ' + sLineBreak +
                                   '2 - para indicar NFS-e emitida com dados incorretos', '' );
  end
  else
  begin
    NumeroNFSe         := InputBox('Cancela NFS-e', 'Informe o Número da NFS-e: ', '' );
    CodigoCancelamento := InputBox('Cancela NFS-e', 'Informe o Codigo de cancelamento: ', '' );
    MotivoCancelamento := InputBox('Cancela NFS-e', 'Informe o Motivo de cancelamento: ', '' );
  end;

  if (cbxNFSeMunicipio.ItemIndex = 0) then
    cMunicipio := '999'
  else
    cMunicipio := '4318705';

  cXMLStream := TMemoryStream.Create;
  try
    mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

    NFSe_CancelarNFSe( 'localhost',
                       edtNFSeCNPJ.Text,
                       NumeroNFSe,
                       cMunicipio,
                       CodigoCancelamento,
                       MotivoCancelamento,
                       cXMLStream );

    cXMLStream.Position := 0;
    mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
  finally
    FreeAndNil(cXMLStream);
  end;
end;

procedure TForm1.btnConsutarNFSeClick(Sender: TObject);
var
  cXMLStream: TMemoryStream;
  sNotaInicio, sNotaFim, sNroNota, sSerie, dtInicial, dtFinal: String;
begin
  if cbxNFSeMunicipio.ItemIndex = 2 then
  begin
    sNotaInicio := edtNFSeLote.Text;
    sNotaFim    := edtNFSeLote.Text;
    sSerie      := 'T';
    dtInicial   := FormatDateTime('dd/mm/yyyy', incmonth(now,-1));
    dtFinal     := FormatDateTime('dd/mm/yyyy', now);

    sNotaInicio := InputBox('Consulta NFS-e','Informe o número da nota inicial: ', sNotaInicio);
    sNotaFim    := InputBox('Consulta NFS-e','Informe o número da nota final: ', sNotaFim);
    sSerie      := InputBox('Consulta NFS-e','Informe a série da nota: ', sSerie);
    dtInicial   := InputBox('Consulta NFS-e','Informe a data inicial do período de emissão: ', dtInicial);
    dtFinal     := InputBox('Consulta NFS-e','Informe a data final do período de emissão: ', dtfinal);

    cXMLStream := TMemoryStream.Create;
    try
      NFSe_ConsultarNFSeCB( 'localhost',
                            edtNFSeCNPJ.Text,
                            sNotaInicio,
                            sNotaFim,
                            StrToDateTime(dtInicial),
                            StrToDateTime(dtFinal),
                            sSerie,
                            cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    finally
      FreeAndNil(cXMLStream);
    end;
  end
  else if cbxNFSeMunicipio.ItemIndex = 3 then
  begin
    sNroNota := InputBox('Consulta NFS-e','Informe o número da nota: ', '');
//    dtInicial := FormatDateTime('yyyy-mm-dd', incmonth(now,-1));
//    dtFinal   := FormatDateTime('yyyy-mm-dd', now);

//    dtInicial := InputBox('Consulta NFS-e','Informe a data inicial do período de emissão: ', dtInicial);
//    dtFinal   := InputBox('Consulta NFS-e','Informe a data final do período de emissão: ', dtfinal);

    cXMLStream := TMemoryStream.Create;
    try
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

      NFSe_ConsultarNFSe2( 'localhost',
                           edtNFSeCNPJ.Text,
                           '', //dtInicial,
                           '', //dtFinal,
                           '',
                           '',
                           '',
                           sNroNota,
                           '', // campo ignoradoNota
                           '',
                           '',
                           '',
                           cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    finally
      FreeAndNil(cXMLStream);
    end;
  end
  else
  begin
    dtInicial := FormatDateTime('yyyy-mm-dd', incmonth(now,-1));
    dtFinal   := FormatDateTime('yyyy-mm-dd', now);

    dtInicial := InputBox('Consulta NFS-e','Informe a data inicial do período de emissão: ', dtInicial);
    dtFinal   := InputBox('Consulta NFS-e','Informe a data final do período de emissão: ', dtfinal);

    cXMLStream := TMemoryStream.Create;
    try
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

      NFSe_ConsultarNFSe( 'localhost',
                          edtNFSeCNPJ.Text,
                          dtInicial,
                          dtFinal,
                          cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    finally
      FreeAndNil(cXMLStream);
    end;
  end;
end;

function TForm1.GerarNFSeTXT(ATotal: Integer): String;
var
  cMunicipio: String;
  cNroRps: String;
  cData: String;
  cCNPJ: String;
  I: Integer;
  cTxt: TStringList;
begin
  if (cbxNFSeMunicipio.ItemIndex = 2) then
  begin
    Result := GerarNFSeCampoBom;
    Exit;
  end
  else if (cbxNFSeMunicipio.ItemIndex = 3) then
  begin
    Result := GerarNFSePortoAlegre;
    Exit;
  end
  else if (cbxNFSeMunicipio.ItemIndex = 4) then
  begin
    Result := GerarNFSeEstanciaVelha;
    Exit;
  end;

  cTxt := TStringList.Create;
  try
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//      cMunicipio := '4313409'//'999    '
//    else
//      cMunicipio := '4318705';
//
//    cNroRps := IntToStr(StrToInt(edtNFSeLote.Text) + ATotal);
//    cNroRps := LPad(cNroRps, '0', 15);
//    cData    := FormatDateTime('yyyy-mm-dd"T"hh:mm:ss', Now);
//    cCNPJ    := edtNFSeCNPJ.Text;
//
//    cTxt.Add(cNroRps);                           // IdentificacaoRps.Número
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//      cTxt.Add('3    ')                           // IdentificacaoRps.Serie
////      cTxt.Add('00008')                           // IdentificacaoRps.Serie
//    else
//      cTxt.Add('NF   ');                          // IdentificacaoRps.Serie
//    cTxt.Add('1');                                // IdentificacaoRps.Tipo
//    cTxt.Add(cData);                              // DataEmissao
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//    begin
//      cTxt.Add('1');                              // NaturezaOperacao
//      cTxt.Add('1');                              // RegimeEspecialTributacao
//      cTxt.Add('2');                              // OptanteSimplesNacional
//    end
//    else
//    begin
//      cTxt.Add('4');                              // NaturezaOperacao
//      cTxt.Add('6');                              // RegimeEspecialTributacao
//      cTxt.Add('1');                              // OptanteSimplesNacional
//    end;
//    cTxt.Add(RPad('21', ' ', 23));                // IncentivoCultural + Status + RpsSubstituido
//    cTxt.Add('000000000008000');                  // ValorServicos
//    cTxt.Add('000000000000000');                  // ValorDeducoes
//    cTxt.Add('000000000000000');                  // ValorPis
//    cTxt.Add('000000000000000');                  // ValorCofins
//    cTxt.Add('000000000000000');                  // ValorInss
//    cTxt.Add('000000000000000');                  // ValorIR
//    cTxt.Add('000000000000000');                  // ValorCsll
//    cTxt.Add('2');                                // IssRetido
//    cTxt.Add('000000000000160');                  // ValorIss
//    cTxt.Add('000000000000000');                  // ValorIssRetido
//    cTxt.Add('000000000000000');                  // OutrasRetencoes
//    cTxt.Add('000000000008000');                  // BaseCalculo
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//      cTxt.Add('20000')                           // Aliquota
//    else
//      cTxt.Add('00200');                          // Aliquota
//    cTxt.Add('000000000008000');                  // ValorLiquidoNfse
//    cTxt.Add('000000000000000');                  // DescontoIncondicionado
//    cTxt.Add('000000000000000');                  // DescontoCondicionado
//
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//    begin
//      cTxt.Add('105  ');                            // ItemListaServico
//      cTxt.Add('6203100');                       // CodigoCnae
//      cTxt.Add(RPad('2526', ' ', 20));               // CodigoTributacaoMunicipio
//    end
//    else
//    begin
//      cTxt.Add('01.07');                          // ItemListaServico
//      cTxt.Add('6209100');                        // CodigoCnae
//      cTxt.Add(RPad('kkkk', ' ', 20));            // CodigoTributacaoMunicipio
//    end;
//    cTxt.Add(RPad('- LICENCIAMENTO DE SOFTWARE VENC: 04/04/2013', ' ', 2000));   // Discriminacao
//    cTxt.Add(cMunicipio);                         // CodigoMunicipio
//    cTxt.Add(cCNPJ);                              // Prestador.Cnpj
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//      cTxt.Add(LPad('77026', ' ' , 15))            // Prestador.InscricaoMunicipal
//    else
//      cTxt.Add(LPad('', ' ' , 15));                // Prestador.InscricaoMunicipal
//    cTxt.Add(LPad('', ' ' , 11));                  // IdentificacaoTomado.Cpf
//    if (cbxNFSeMunicipio.ItemIndex = 0) then
//    begin
//      cTxt.Add('11929203000183');                 // IdentificacaoTomado.Cnpj
//      cTxt.Add(RPad('80058', ' ', 15));                 // IdentificacaoTomado.InscricaoMunicipal
//    end
//    else
//    begin
//      cTxt.Add('92758762000170');                 // IdentificacaoTomado.Cnpj
//      cTxt.Add(RPad('860155404', ' ', 15));       // IdentificacaoTomado.InscricaoMunicipal
//    end;
//    cTxt.Add(RPad('Via Sul Metais Ltda', ' ', 115)); // Tomador.RazaoSocial
//    cTxt.Add(RPad('Rua Bartolomeu de Gusmão', ' ', 125));            // Tomador.Endereco.Endereco
//    cTxt.Add(RPad('1817', ' ', 10));               // Tomador.Endereco.Numero
//    cTxt.Add(RPad('', ' ', 60));       // Tomador.Endereco.Complemento
//    cTxt.Add(RPad('Canudos', ' ', 60));          // Tomador.Endereco.Bairro
//    cTxt.Add('4313409');                          // Tomador.Endereco.CodigoMunicipio
//    cTxt.Add('RS');                               // Tomador.Endereco.UF
//    cTxt.Add('93546000');                         // Tomador.Endereco.CEP
//    cTxt.Add('00000000000');                      // Tomador.Contato.Telefone
//    cTxt.Add(RPad('jaque@fulltimecontabilidade.com.br', ' ', 80));           // Tomador.Contato.Email
//    cTxt.Add(LPad('', ' ', 185));

    if (cbxNFSeMunicipio.ItemIndex = 0) then
        cMunicipio := '999    '
    else
      cMunicipio := '4318705';

    cNroRps := IntToStr(StrToInt(edtNFSeLote.Text) + ATotal);
    cNroRps := LPad(cNroRps, '0', 15);
    cData    := FormatDateTime('yyyy-mm-dd"T"hh:mm:ss', Now);
    cCNPJ    := edtNFSeCNPJ.Text;

    cTxt.Add(cNroRps);                           // IdentificacaoRps.Número
    if (cbxNFSeMunicipio.ItemIndex = 0) then
      cTxt.Add('00008')                           // IdentificacaoRps.Serie
    else
      cTxt.Add('NF   ');                          // IdentificacaoRps.Serie
    cTxt.Add('1');                                // IdentificacaoRps.Tipo
    cTxt.Add(cData);                              // DataEmissao
    if (cbxNFSeMunicipio.ItemIndex = 0) then
    begin
      cTxt.Add('1');                              // NaturezaOperacao
      cTxt.Add('1');                              // RegimeEspecialTributacao
      cTxt.Add('2');                              // OptanteSimplesNacional
//      cTxt.Add('2');                              // RegimeEspecialTributacao
//      cTxt.Add('2');                              // OptanteSimplesNacional
    end
    else
    begin
      cTxt.Add('4');                              // NaturezaOperacao
      cTxt.Add('6');                              // RegimeEspecialTributacao
      cTxt.Add('1');                              // OptanteSimplesNacional
    end;
    cTxt.Add(RPad('21', ' ', 23));                // IncentivoCultural + Status + RpsSubstituido
//    cTxt.Add('000000000100000');                  // ValorServicos
    cTxt.Add('000000000275000');                  // ValorServicos
    cTxt.Add('000000000000000');                  // ValorDeducoes
    cTxt.Add('000000000000000');                  // ValorPis
    cTxt.Add('000000000000000');                  // ValorCofins
    cTxt.Add('000000000000000');                  // ValorInss
    cTxt.Add('000000000000000');                  // ValorIR
    cTxt.Add('000000000000000');                  // ValorCsll
    cTxt.Add('2');                                // IssRetido
    cTxt.Add('000000000000000');                  // ValorIss
    cTxt.Add('000000000000000');                  // ValorIssRetido
    cTxt.Add('000000000000000');                  // OutrasRetencoes
    cTxt.Add('000000000275000');                  // BaseCalculo
    if (cbxNFSeMunicipio.ItemIndex = 0) then
      cTxt.Add('00000')                           // Aliquota
//      cTxt.Add('20000')                           // Aliquota
    else
      cTxt.Add('00200');                          // Aliquota
    cTxt.Add('000000000100000');                  // ValorLiquidoNfse
    cTxt.Add('000000000000000');                  // DescontoIncondicionado
    cTxt.Add('000000000000000');                  // DescontoCondicionado

    if (cbxNFSeMunicipio.ItemIndex = 0) then
    begin
      cTxt.Add('1719');                           // ItemListaServico
      cTxt.Add('6920601 ');                       // CodigoCnae
      cTxt.Add(RPad('3', ' ', 20));               // CodigoTributacaoMunicipio
//      cTxt.Add('1101');                           // ItemListaServico
//      cTxt.Add('6311900 ');                       // CodigoCnae
//      cTxt.Add(RPad('6', ' ', 20));               // CodigoTributacaoMunicipio
    end
    else
    begin
      cTxt.Add('01.07');                          // ItemListaServico
      cTxt.Add('6209100');                        // CodigoCnae
      cTxt.Add(RPad('kkkk', ' ', 20));            // CodigoTributacaoMunicipio
    end;
    cTxt.Add(RPad('Discriminacao', ' ', 2000));   // Discriminacao
    cTxt.Add(cMunicipio);                         // CodigoMunicipio
    cTxt.Add(cCNPJ);                              // Prestador.Cnpj
    if (cbxNFSeMunicipio.ItemIndex = 0) then
      cTxt.Add(LPad('60169', ' ' , 15))            // Prestador.InscricaoMunicipal
//      cTxt.Add(LPad('77026', ' ' , 15))            // Prestador.InscricaoMunicipal
    else
      cTxt.Add(LPad('', ' ' , 15));                // Prestador.InscricaoMunicipal
    cTxt.Add(LPad('', ' ' , 11));                  // IdentificacaoTomado.Cpf
    if (cbxNFSeMunicipio.ItemIndex = 0) then
    begin
      cTxt.Add('01360251000140');                 // IdentificacaoTomado.Cnpj
//      cTxt.Add('00584473000183');                 // IdentificacaoTomado.Cnpj
      cTxt.Add(RPad('', ' ', 15));                 // IdentificacaoTomado.InscricaoMunicipal
    end
    else
    begin
      cTxt.Add('92758762000170');                 // IdentificacaoTomado.Cnpj
      cTxt.Add(RPad('860155404', ' ', 15));       // IdentificacaoTomado.InscricaoMunicipal
    end;
    cTxt.Add(RPad('Joao da Silva ME', ' ', 115)); // Tomador.RazaoSocial
    cTxt.Add(RPad('rua x', ' ', 125));            // Tomador.Endereco.Endereco
    cTxt.Add(RPad('123', ' ', 10));               // Tomador.Endereco.Numero
    cTxt.Add(RPad('complemento', ' ', 60));       // Tomador.Endereco.Complemento
    cTxt.Add(RPad('bairro x', ' ', 60));          // Tomador.Endereco.Bairro
    cTxt.Add('3106200');                          // Tomador.Endereco.CodigoMunicipio
    cTxt.Add('AC');                               // Tomador.Endereco.UF
    cTxt.Add('12345678');                         // Tomador.Endereco.CEP
    cTxt.Add('33333333333');                      // Tomador.Contato.Telefone
    cTxt.Add(RPad('email x', ' ', 80));           // Tomador.Contato.Email
    cTxt.Add(LPad('', ' ', 185));

    // Remove as quebras de linhas
    Result := '';
    for I := 0 to cTxt.Count - 1 do
    begin
      Result := Result + cTxt[I];
    end;
  finally
    FreeAndNil(cTxt);
  end;
end;

procedure TForm1.btnNFSeSalvarRetornoClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    mmoNFSeRetorno.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
end;

procedure TForm1.btnNFSeListarNotasClick(Sender: TObject);
var
  sXML: TMemoryStream;
begin
  if not OpenDialog.Execute then
    Exit;
  mmoNFSeRetorno.Lines.LoadFromFile(OpenDialog.FileName);
  sXML := TMemoryStream.Create;
  try
    mmoNFSeRetorno.Lines.SaveToStream(sXML);
    lbxNFSeNotas.Clear;
    NFSe_ListarNotas(sXML, lbxNFSeNotas.Items);
  finally
    FreeAndNil(sXML);
  end;
end;

procedure TForm1.lbxNFSeNotasClick(Sender: TObject);
var
  I, J, K: Integer;
  sLinha, sNroNFSe: String;
  sXML, sXMLNFSe: TMemoryStream;
begin
  I := lbxNFSeNotas.ItemIndex;
  if (I > -1) then
  begin
    sLinha := lbxNFSeNotas.Items[I];
    J := Pos('NFSe: ', sLinha);
    K := Pos('/ Cod.', sLinha);
    if (J > 0) and (K > 0) then
    begin
      Inc(J, 6);
      sNroNFSe := Trim(Copy(sLinha, J, K - J));

      sXML := TMemoryStream.Create;
      sXMLNFSe := TMemoryStream.Create;
      try
        mmoNFSeRetorno.Lines.SaveToStream(sXML);
        NFSe_RecuperarNota(sXML, sNroNFSe, sXMLNFSe);

        sXMLNFSe.Position := 0;
        mmoNFSeRecupera.Lines.LoadFromStream(sXMLNFSe);
      finally
        FreeAndNil(sXML);
        FreeAndNil(sXMLNFSe);
      end;
    end;
  end;
end;

procedure TForm1.btnCarregarXMLClick(Sender: TObject);
var
  sXML: TMemoryStream;
  sList: TStringList;
begin
  if OpenDialog.Execute then
  begin
    sList := TStringList.Create;
    sXML := TMemoryStream.Create;
    try
      sList.LoadFromFile(OpenDialog.FileName);
      sList.SaveToStream(sXML);

      cdsNFSe.Close;
      cdsNFSe.CreateDataSet;

      NFSe_CarregarNotas(sXML, cdsNFSe);
    finally
      FreeAndNil(sXML);
      FreeAndNil(sList);
    end;
  end;
end;

function TForm1.GerarNFSeCampoBom: String;
var
  xDoc: IXMLDocument;
  xNode: IXMLNode;
begin
  xDoc := LoadXMLDocument('NFSe\teste-campobom.xml');
  xNode := xDoc.ChildNodes[1];   // NFS-e
  xNode := xNode.ChildNodes[0];  // infNFSe
  xNode := xNode.ChildNodes[0];  // Id

  // -- Qual a diferença de cNFS-e e nNFS-e ??
  xNode.ChildValues['cNFS-e'] := edtNFSeNroRps.Text;
  xNode.ChildValues['nNFS-e'] := edtNFSeNroRps.Text;

  xNode.ChildValues['dEmi'] := FormatDateTime('yyyy-mm-dd', Now);

  Result := XMLStringToWideString(xDoc.XML.Text);
end;

procedure TForm1.btnObterNotaPNGClick(Sender: TObject);
var
  cPNGStream: TMemoryStream;
  sNotaInicio, sNotaFim, sSerie, dtInicial, dtFinal: String;
begin
  if cbxNFSeMunicipio.ItemIndex <> 2 then
    raise Exception.Create('Suportado apenas para Campo Bom.');

  sNotaInicio := edtNFSeLote.Text;
  sNotaFim    := edtNFSeLote.Text;
  sSerie      := 'T';
  dtInicial   := FormatDateTime('dd/mm/yyyy', incmonth(now,-1));
  dtFinal     := FormatDateTime('dd/mm/yyyy', now);

  sNotaInicio := InputBox('Consulta NFS-e','Informe o número da nota  inicial: ', sNotaInicio);
  sNotaFim    := InputBox('Consulta NFS-e','Informe o número da nota  final: ', sNotaFim);
  sSerie      := InputBox('Consulta NFS-e','Informe a série da nota: ', sSerie);
  dtInicial   := InputBox('Consulta NFS-e','Informe a data inicial do período de emissão: ', dtInicial);
  dtFinal     := InputBox('Consulta NFS-e','Informe a data final do período de emissão: ', dtfinal);

  cPNGStream := TMemoryStream.Create;
  try
    NFSe_ObterNotaEmPNG( 'localhost',
                         edtNFSeCNPJ.Text,
                         sNotaInicio,
                         sNotaFim,
                         StrToDateTime(dtInicial),
                         StrToDateTime(dtFinal),
                         sSerie,
                         cPNGStream );

    cPNGStream.Position := 0;
    cPNGStream.SaveToFile(ExtractFileDir(Application.ExeName) + '\Imagem_' + FormatDateTime('yyyy-mm-dd', Now) + '.png');
  finally
    FreeAndNil(cPNGStream);
  end;
end;

function TForm1.GerarNFSePortoAlegre: String;
var
  NFSeEnvio: TXCDS_NFSe_POA_Envio;
  Cds: TClientDataSet;
  sIncMun: String;
begin
  sIncMun := InputBox('Inscrição Municipal','Informe a Inscrição Municipal: ', '55718620');

  NFSeEnvio := TXCDS_NFSe_POA_Envio.Create;
  Cds := NFSeEnvio.CriarClientDataSet('NFSe\teste-portoalegre.xml');
  try
    Cds.Edit;
    Cds.FieldByName('NumeroLote').AsString := FormatDateTime('yyyymm', now) + Format('%7.7d',[StrToInt(edtNFSeNroRps.Text)]);
    Cds.FieldByName('Cnpj').AsString := edtNFSeCNPJ.Text;
    Cds.FieldByName('InscricaoMunicipal').AsString := sIncMun;
    Cds.FieldByName('ListaRps.Rps.InfRps.IdentificacaoRps.Numero').AsString := edtNFSeNroRps.Text;
    Cds.FieldByName('ListaRps.Rps.InfRps.DataEmissao').AsDateTime := Now;
    Cds.FieldByName('ListaRps.Rps.InfRps.Prestador.Cnpj').AsString := edtNFSeCNPJ.Text;
    Cds.FieldByName('ListaRps.Rps.InfRps.Prestador.InscricaoMunicipal').AsString := sIncMun;
    Cds.FieldByName('ListaRps.Rps.InfRps.DataEmissao').AsDateTime := Now;
    Cds.Post;

    Result := NFSeEnvio.GerarXML(Cds, False);
  finally
    FreeAndNil(Cds);
    FreeAndNil(NFSeEnvio);
  end;
end;

procedure TForm1.btnGerarQRCodeClick(Sender: TObject);
var
  QRCodeStream: TMemoryStream;
  jGraphic: TJPEGImage;
  sList: TStringList;
begin
  imgQRCode.Picture := nil;

  QRCodeStream := TMemoryStream.Create;

  if OpenDialog.Execute then
  begin
    sList := TStringList.Create;
    try
      sList.LoadFromFile(OpenDialog.FileName);
      GerarQRCodeNFCe('localhost',
                      edtNFCeCPNJ.Text,
                      '000001', // idToken
                      'C1774291-A86A-4ADA-B247-791207C6CF50', // CSC
                      Trim(sList.Text),
                      QRCodeStream);
    finally
      FreeAndNil(sList);
    end;

    jGraphic := TJPEGImage.Create;
    try
      QRCodeStream.Position := 0;
      jGraphic.LoadFromStream(QRCodeStream);
    except
      FreeAndNil(jGraphic);
      raise;
    end;
    imgQRCode.Picture.Graphic := jGraphic;
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
  sLote, sSerie, sTipo, sChave: string;
  cXMLStream: TMemoryStream;
begin
  if cbxNFSeMunicipio.ItemIndex = 2 then
  begin
    sChave := InputBox('ObterNota','Informe o número da chave de acesso: ', '');

    cXMLStream := TMemoryStream.Create;
    try
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

      NFSe_ObterNota( 'localhost',
                      edtNFSeCNPJ.Text,
                      sChave,
                      cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    finally
      FreeAndNil(cXMLStream);
    end;
  end
  else if cbxNFSeMunicipio.ItemIndex = 3 then
  begin
    sLote := InputBox('Consulta RPS','Informe o número do lote: ', '');
    sSerie := InputBox('Consulta RPS','Informe a série lote: ', '');
    sTipo := InputBox('Consulta RPS','Informe o tipo do lote: ', '');

    cXMLStream := TMemoryStream.Create;
    try
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);

      NFSe_ConsultarNFSeRPS( 'localhost',
                             edtNFSeCNPJ.Text,
                             sLote,
                             sSerie,
                             sTipo,
                             cXMLStream );

      cXMLStream.Position := 0;
      mmoNFSeRetorno.Lines.LoadFromStream(cXMLStream);
    finally
      FreeAndNil(cXMLStream);
    end;
  end
  else
    raise Exception.Create('Não suportado para a cidade selecionada.');
end;

procedure TForm1.btnDFeDistNsuClick(Sender: TObject);
var
  MXml: TMemoryStream;
  SXml: TStringStream;
  ultNSU, maxNSU: String;
  qtdeDocto: Integer;
begin
  cdsNotaDestinada.Close;

  MXml := TMemoryStream.Create;
  try
    NFeDistNSU( 'localhost',
                edtDFeCnpj.Text,
                edtDFeCnpj.Text,
                edtDFeUf.Text,
                edtDFeUltNsuReceb.Text,
                ultNSU,
                maxNSU,
                qtdeDocto,
                MXml );

    SXml := TStringStream.Create('');
    try
      MXml.Position := 0;
      SXml.CopyFrom(MXml, MXml.Size);
      xtrNotaDestinada.TransformRead.SourceXml := SXml.DataString;
      xtrNotaDestinada.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\distNSU.xtr';
      cdsNotaDestinada.Open;
    finally
      SXml.free;
    end;
  finally
    MXml.Free;
  end;
end;

procedure TForm1.cdsNotaDestinadaAfterScroll(DataSet: TDataSet);
var
  MXml: TMemoryStream;
begin
  lblDFeNSU.Caption := 'NSU: ' + cdsNotaDestinadaNSU.AsString;

  MXml := TMemoryStream.Create;
  try
    NFeConsNSU( 'localhost',
                edtDFeCnpj.Text,
                edtDFeCnpj.Text,
                edtDFeUf.Text,
                cdsNotaDestinadaNSU.AsString,
                MXml );

    MXml.Position := 0;
    mmoDFeXML.Lines.LoadFromStream(MXml);
  finally
    MXml.Free;
  end;
end;

function TForm1.GerarNFSeEstanciaVelha: String;
var
  NFSeEnvio: TXCDS_NFSe_EstanciaVelha_Envio;
  Cds: TClientDataSet;
  sIncMun: String;
begin
  sIncMun := InputBox('Inscrição Municipal','Informe a Inscrição Municipal: ', '55718620');

  NFSeEnvio := TXCDS_NFSe_EstanciaVelha_Envio.Create;
  Cds := NFSeEnvio.CriarClientDataSet( ExtractFilePath(Application.ExeName) + 'NFSe\teste-envio-estanciavelha.xml');
  try
    Cds.Edit;
    Cds.FieldByName('NumeroLote').AsString := FormatDateTime('yyyymm', now) + Format('%7.7d',[StrToInt(edtNFSeNroRps.Text)]);
    Cds.FieldByName('CpfCnpj.Cnpj').AsString := edtNFSeCNPJ.Text;
    Cds.FieldByName('InscricaoMunicipal').AsString := sIncMun;
    Cds.FieldByName('ListaRps.Rps.tcDeclaracaoPrestacaoServico.InfDeclaracaoPrestacaoServico.Rps.IdentificacaoRps.Numero').AsString := edtNFSeNroRps.Text;
    Cds.FieldByName('ListaRps.Rps.tcDeclaracaoPrestacaoServico.InfDeclaracaoPrestacaoServico.Rps.DataEmissao').AsDateTime := Now;
    Cds.FieldByName('ListaRps.Rps.tcDeclaracaoPrestacaoServico.InfDeclaracaoPrestacaoServico.Prestador.CpfCnpj.Cnpj').AsString := edtNFSeCNPJ.Text;
    Cds.FieldByName('ListaRps.Rps.tcDeclaracaoPrestacaoServico.InfDeclaracaoPrestacaoServico.Prestador.InscricaoMunicipal').AsString := sIncMun;
    Cds.Post;

    NFSeEnvio.Id := '12014' + Cds.FieldByName('CpfCnpj.Cnpj').AsString +
                    LPad(Cds.FieldByName('NumeroLote').AsString, '0', 16);
    Result := NFSeEnvio.GerarXML(Cds, False);
  finally
    FreeAndNil(Cds);
    FreeAndNil(NFSeEnvio);
  end;
end;

procedure TForm1.btnNFSeGeraXMLClick(Sender: TObject);
var
  NFSeEnvio: TXCDS_NFSe_EstanciaVelha_Envio;
  Cds: TClientDataSet;
begin
  if Assigned(FCds) then
    FreeAndNil(FCds);

  NFSeEnvio := TXCDS_NFSe_EstanciaVelha_Envio.Create;
  try
    FCds := NFSeEnvio.CriarClientDataSet( ExtractFilePath(Application.ExeName) + 'NFSe\teste-envio-estanciavelha.xml');
    dsNFSeGerarXML.DataSet := FCds;
  finally
    FreeAndNil(NFSeEnvio);
  end;
end;

procedure TForm1.btnNFSeGerarXMLClick(Sender: TObject);
begin
  mmoNFSeRetorno.Lines.Text := GerarNFSeTXT(0);
end;

procedure TForm1.btnMDFeCriarChaveClick(Sender: TObject);
var
  chave: string;
begin
  chave := MDFe_CriarChave('localhost',
                           edtMDFeCnpj.Text,
                           cbMDFeUF.Value,
                           FormatDateTime('YY', Date),
                           FormatDateTime('MM', Date),
                           '58',
                           edtMDFeSerie.Text,
                           edtMDFeNumero.Text,
                           cbMDFeTipoEmissao.Value);

  edtMDFeNumero.IntValue := edtMDFeNumero.IntValue + 1;

  mmoMDFeRetorno.Lines.Add('Chave: ' + chave);
  mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  mmoMDFeRetorno.Clear;
  mmoMDFeAssinado.Clear;
end;

function DateTimeToUTC(Value: TDateTime): string;
const
  Neg: array[Boolean] of string=  ('+', '-');
var
  Bias: Integer;
  TimeZoneInfo: TTimeZoneInformation;
begin
  Result := FormatDateTime('yyyy''-''mm''-''dd''T''hh'':''nn'':''ss''', Value);

  case GetTimeZoneInformation(TimeZoneInfo) of
    TIME_ZONE_ID_STANDARD: Bias := TimeZoneInfo.Bias + TimeZoneInfo.StandardBias;
    TIME_ZONE_ID_DAYLIGHT: Bias := TimeZoneInfo.Bias + TimeZoneInfo.DaylightBias;
  else
    Bias := 0;
  end;

  if (Bias <> 0) then
  begin
    Result := Format('%s%s%.2d:%.2d', [Result, Neg[Bias > 0],                 
                                       Abs(Bias) div MinsPerHour,
                                       Abs(Bias) mod MinsPerHour]);
  end
  else
    Result := Result + 'Z'; 
end;

procedure TForm1.btnMDFeEnviarClick(Sender: TObject);
var
  chave, codigo, digito, protocolo: string;
  sMDFe: TStringStream;
  mMDFe: TMemoryStream;
begin
  sMDFe := TStringStream.Create( GerarMDFeXML(chave, codigo, digito) );
  try
    mmoMDFeRetorno.Lines.Add('MDFe: ' + chave);
    mmoMDFeRetorno.Lines.Add( sMDFe.DataString );
    mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');

    mMDFe := TMemoryStream.Create;
    try
      mMDFe.Position := 0;
      mMDFe.LoadFromStream(sMDFe);

      protocolo := MDFe_Enviar('localhost',
                               edtMDFeCnpj.Text,
                               mMDFe);

      sMDFe.Position := 0;
      mMDFe.Position := 0;
      mMDFe.SaveToStream(sMDFe);

      mmoMDFeRetorno.Lines.Add('Chave........: ' + chave);
      mmoMDFeRetorno.Lines.Add('cDFe.........: ' + codigo);
      mmoMDFeRetorno.Lines.Add('cDV..........: ' + digito);
      mmoMDFeRetorno.Lines.Add('Procolo Envio: ' + protocolo);
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');

      mmoMDFeAssinado.Text := FormatXMLData(sMDFe.DataString);

      edtMDFeNumero.IntValue := edtMDFeNumero.IntValue + 1;
    finally
      FreeAndNil(mMDFe);
    end;
  finally
    FreeAndNil(sMDFe);
  end;
end;

procedure TForm1.btnMDFeConsultarClick(Sender: TObject);
var
  chave: string;
  Xml: TMemoryStream;
  sXml: TStringStream;
begin
  chave := InputBox('Informe a chave', 'Chave', '');

  Xml := TMemoryStream.Create;
  try
    MDFe_Consultar('localhost',
                   edtMDFeCnpj.Text,
                   chave,
                   Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Consulta Situação: ' + chave);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeBuscarClick(Sender: TObject);
var
  recibo, protocolo: string;
  Xml, MDFe: TMemoryStream;
  sXml: TStringStream;
begin
  recibo := InputBox('Informe o recibo', 'recibo', '');

  Xml := TMemoryStream.Create;
  MDFe := TMemoryStream.Create;
  try
    sXml := TStringStream.Create(mmoMDFeAssinado.Text);
    try
      MDFe.Position := 0;
      MDFe.LoadFromStream(sXml);
    finally
      FreeAndNil(sXml);
    end;

    protocolo := MDFe_Buscar('localhost',
                             edtMDFeCnpj.Text,
                             recibo,
                             MDFe,
                             Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Buscar Situação: ' + recibo);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(MDFe);
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeCancelarClick(Sender: TObject);
var
  ChaveMDFe, Protocolo, Justificativa: string;
  protocoloRet: string;
  Xml: TMemoryStream;
  sXml: TStringStream;
begin
  ChaveMDFe := InputBox('Informe a chave', 'Chave', '');
  Protocolo := InputBox('Informe o protocolo', 'Protocolo', '');
  Justificativa := InputBox('Informe a justificativa', 'Justificativa', '');

  Xml := TMemoryStream.Create;
  try
    protocoloRet := MDFe_Cancelar('localhost',
                                  edtMDFeCnpj.Text,
                                  ChaveMDFe,
                                  Protocolo,
                                  Justificativa,
                                  Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Cancelar MDFe: ' + ChaveMDFe + '|' + Protocolo + '|' + Justificativa );
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
      mmoMDFeRetorno.Lines.Add('Procolo Cancelamento: ' + protocoloRet);
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeConsultarNaoEncerradasClick(Sender: TObject);
var
  Qtde: Integer;
  Xml: TMemoryStream;
  sXml: TStringStream;
begin
  Xml := TMemoryStream.Create;
  try
    Qtde := MDFe_ConsultarNaoEncerrada('localhost',
                                       edtMDFeCnpj.Text,
                                       copy(cbMDFeUF.Text, Pos('/', cbMDFeUF.Text) + 1, 2),
                                       Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Consulta Não Encerrada: ' + IntToStr(Qtde) + ' encontrada(s)');
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeEncerrarClick(Sender: TObject);
var
  Xml: TMemoryStream;
  sXml: TStringStream;
  protocolo, chave, protRet: string;
begin
  chave     := InputBox('Informe a chave', 'Chave', '');
  protocolo := InputBox('Informe o protocolo', 'Protocolo', '');

  Xml := TMemoryStream.Create;
  try
    protRet := MDFe_Encerrar('localhost',
                             edtMDFeCnpj.Text,
                             chave,
                             protocolo,
                             FormatDateTime('yyyy-mm-dd', Date),
                             '43', // RS
                             '4313409',
                             Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Encerrar: ' + protRet);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeIncluirCondutorClick(Sender: TObject);
var
  Xml: TMemoryStream;
  sXml: TStringStream;
  protRet, chave, Cpf, Nome, Pos: string;
begin
  chave := InputBox('Informe a chave', 'Chave', '');
  Cpf   := InputBox('Informe o Cpf', 'Cpf do Condutor', '');
  nome  := InputBox('Informe o Nome', 'Nome do Condutor', '');
  Pos   := InputBox('Informe o sequencial do condutor', 'Sequencial', '4');

  Xml := TMemoryStream.Create;
  try
    protRet := MDFe_IncluirCondutor('localhost',
                                    edtMDFeCnpj.Text,
                                    chave,
                                    Cpf,
                                    Nome,
                                    StrToIntDef(Pos, 1), 
                                    Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Incluir Condutor: ' + protRet);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

procedure TForm1.btnMDFeConsultarStatusWSClick(Sender: TObject);
var
  status: string;
begin
  status := MDFe_ConsultarStatus('localhost',
                                 edtMDFeCnpj.Text,
                                 copy(cbMDFeUF.Text, Pos('/', cbMDFeUF.Text) + 1, 2));

  edtMDFeNumero.IntValue := edtMDFeNumero.IntValue + 1;

  mmoMDFeRetorno.Lines.Add('Consultar Status WS: ' + status);
  mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
end;

procedure TForm1.btnMDFeConsultarDistInteressadoClick(Sender: TObject);
var
  Xml: TMemoryStream;
  sXml: TStringStream;
  slRet: TStringList;
  protRet, Uf, ultNsu: string;
  I: Integer;
  Linha, Temp: string;
begin
  Uf           := InputBox('Informe o UF', 'UF', cbMDFeUF.Value);
  ultNsu       := InputBox('Informe o último NSU recebido', 'Último NSU recebido', '0');

  Xml := TMemoryStream.Create;
  try
    protRet := MDFe_ConsultarDistribuicaoInteressado('localhost',
                                                     edtMDFeCnpj.Text,
                                                     Uf,
                                                     ultNsu,
                                                     Xml);

    sXml := TStringStream.Create('');
    slRet := TStringList.Create;
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Consultar Distribuição Interessado: ' + protRet);
      slRet.Text := sXml.DataString;
      for I := 0 to slRet.Count - 1 do
      begin
        Linha := slRet[I];

        mmoMDFeRetorno.Lines.Add('Sequencia: ' + Extrair(Linha, '|'));
        Extrair(Linha, '|');
        mmoMDFeRetorno.Lines.Add( FormatXMLData(Extrair(Linha, '|')) );
        mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
      end;
    finally
      FreeAndNil(sXml);
      FreeAndNil(slRet);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

function TForm1.Extrair(var ATexto: String; ADelimitador: String): String;
var
  iPos: Integer;
begin
  iPos := Pos(ADelimitador, ATexto);
  if (iPos = 0) then
    Result := ATexto
  else
  begin
    Result := Copy(ATexto, 1, iPos - Length(ADelimitador));
    ATexto := Copy(ATexto, iPos + Length(ADelimitador), Length(ATexto));
  end;
end;

procedure TForm1.btnMDFeConsultarDistNSUClick(Sender: TObject);
var
  Xml: TMemoryStream;
  sXml: TStringStream;
  protRet, Uf, ultNsu: string;
  I: Integer;
begin
  Uf           := InputBox('Informe o UF', 'UF', cbMDFeUF.Value);
  ultNsu       := InputBox('Informe o NSU', 'NSU', '0');

  Xml := TMemoryStream.Create;
  try
    protRet := MDFe_ConsultarDistribuicaoNSU('localhost',
                                             edtMDFeCnpj.Text,
                                             Uf,
                                             ultNsu,
                                             Xml);

    sXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);

      mmoMDFeRetorno.Lines.Add('Consultar Distribuição NSU: ' + protRet);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
    end;
  finally
    FreeAndNil(Xml);
  end;
end;

type
  _TXMLNode = class(TXMLNode);

function TForm1.GerarMDFeXML(out chave, codigo, digito: string): string;
var
  enviMDFe: IXMLTEnviMDFe;
  rodo: IXMLRodo;
  sChave: TStringList;
  placa: string;
  InfMunCarrega: IXMLInfMunCarrega;
  condutor: IXMLRodo_veicTracao_condutor;
  descarga: IXMLInfMunDescarga;
  nfe: IXMLInfNFe;
  lacre: IXMLLacres;
  autorizado: IXMLAutXML;
begin
  placa := InputBox('Informe a placa', 'placa do veículo', 'ABC1234');

  sChave := TStringList.Create;
  try
    sChave.Delimiter := '|';
    sChave.DelimitedText := MDFe_CriarChave('localhost',
                                            edtMDFeCnpj.Text,
                                            cbMDFeUF.Value,
                                            FormatDateTime('YY', Date),
                                            FormatDateTime('MM', Date),
                                            '58',
                                            edtMDFeSerie.Text,
                                            edtMDFeNumero.Text,
                                            cbMDFeTipoEmissao.Value);

    chave := sChave[0];
    codigo := sChave[1];
    digito := sChave[2];
  finally
    FreeAndNil(sChave);
  end;

  // Não pode mudar a ordem dos campos adicionados 
  enviMDFe := NewenviMDFe;

  enviMDFe.MDFe.InfMDFe.Versao := '3.00';
  enviMDFe.MDFe.InfMDFe.Id := 'MDFe' + chave;

  enviMDFe.MDFe.InfMDFe.Ide.CUF := cbMDFeUF.Value;
  enviMDFe.MDFe.InfMDFe.Ide.TpAmb := cbMDFeAmbiente.Value;
  enviMDFe.MDFe.InfMDFe.Ide.TpEmit := '2';
  enviMDFe.MDFe.InfMDFe.Ide.Mod_ := '58';
  enviMDFe.MDFe.InfMDFe.Ide.Serie := edtMDFeSerie.Text;
  enviMDFe.MDFe.InfMDFe.Ide.NMDF := edtMDFeNumero.Text;
  enviMDFe.MDFe.InfMDFe.Ide.CMDF := codigo;
  enviMDFe.MDFe.InfMDFe.Ide.CDV := digito;
  enviMDFe.MDFe.InfMDFe.Ide.Modal := '1';
  enviMDFe.MDFe.InfMDFe.Ide.DhEmi := DateTimeToUTC(Now);
  enviMDFe.MDFe.InfMDFe.Ide.TpEmis := cbMDFeTipoEmissao.Value;
  enviMDFe.MDFe.InfMDFe.Ide.ProcEmi := '0';
  enviMDFe.MDFe.InfMDFe.Ide.VerProc := 'DLL_MDFe.Util v_3.00';
  enviMDFe.MDFe.InfMDFe.Ide.UFIni := copy(cbMDFeUF.Text, Pos('/', cbMDFeUF.Text) + 1, 2);
  enviMDFe.MDFe.InfMDFe.Ide.UFFim := 'SC';

  InfMunCarrega := enviMDFe.MDFe.InfMDFe.Ide.InfMunCarrega.Add;
  //InfMunCarrega.CMunCarrega := '4313409';
  //InfMunCarrega.XMunCarrega := 'Novo Hamburgo';
  InfMunCarrega.CMunCarrega := '4319901';
  InfMunCarrega.XMunCarrega := 'Sapiranga';

  enviMDFe.MDFe.InfMDFe.Emit.CNPJ := edtMDFeCnpj.Text;
  enviMDFe.MDFe.InfMDFe.Emit.IE := '1310069147';
  enviMDFe.MDFe.InfMDFe.Emit.XNome := 'LOTUS CALCADOS LTDA';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XLgr := 'AV SEN ALBERTO PASQUALINI';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Nro := '90';
  //enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XCpl := '3 ANDAR';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XBairro := 'CENTRO';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CMun := '4319901';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XMun := 'SAPIRANGA';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CEP := '93800074';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.UF := copy(cbMDFeUF.Text, Pos('/', cbMDFeUF.Text) + 1, 2);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Fone := '5135986584';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Email := 'cleomar@servisoft.com.br';


  {enviMDFe.MDFe.InfMDFe.Emit.CNPJ := edtMDFeCnpj.Text;
  enviMDFe.MDFe.InfMDFe.Emit.IE := '860426343';
  enviMDFe.MDFe.InfMDFe.Emit.XNome := 'CRI ASSESS & INFORMATICA LTDA';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XLgr := 'RUA TUPI';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Nro := '758';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XCpl := '3 ANDAR';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XBairro := 'RIO BRANCO';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CMun := '4313409';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XMun := 'Novo Hamburgo';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CEP := '93336010';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.UF := copy(cbMDFeUF.Text, Pos('/', cbMDFeUF.Text) + 1, 2);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Fone := '1433022000';
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Email := 'contato@flexdocs.com.br';}

  // Existem 4 tipos de InfModal
  // Aeroviário  - IXMLAereo
  // Aquaviário  - IXMLAquav
  // Ferroviário - IXMLFerrov
  // Rodoviário  - IXMLRodo
  rodo := Newrodo;
  rodo.VeicTracao.Placa := placa;
  rodo.VeicTracao.Tara := '15000';

  condutor := rodo.VeicTracao.Condutor.Add;
  condutor.XNome := 'Fulano de Tal motorista';
  condutor.CPF := '11111111111';

  //condutor := rodo.VeicTracao.Condutor.Add;
  //condutor.XNome := 'Beltrano de Tal motorista';
  //condutor.CPF := '22222222222';

  //condutor := rodo.VeicTracao.Condutor.Add;
  //condutor.XNome := 'Sicrano de Tal motorista';
  //condutor.CPF := '33333333333';

  rodo.VeicTracao.TpRod := '01';
  rodo.VeicTracao.TpCar := '00';
  rodo.VeicTracao.UF := 'SP';

  rodo.ParentNode.XML; // tem que fazer isto caso contrário gera erro.

  enviMDFe.MDFe.InfMDFe.InfModal.VersaoModal := '3.00';
  enviMDFe.MDFe.InfMDFe.InfModal.ChildNodes.Add( rodo );

  descarga := enviMDFe.MDFe.InfMDFe.InfDoc.Add;
  descarga.CMunDescarga := '4205407';
  descarga.XMunDescarga := 'Florianopolis';

  nfe := descarga.InfNFe.Add;
  nfe.ChNFe := '35140210142785000190550001234567891876543210';

  nfe := descarga.InfNFe.Add;
  nfe.chNFe := '35140210142785000190550001234567901876543211';

  enviMDFe.MDFe.InfMDFe.Tot.QCTe := IntToStr(descarga.InfCTe.Count);
  enviMDFe.MDFe.InfMDFe.Tot.QNFe := IntToStr(descarga.InfNFe.Count);
  enviMDFe.MDFe.InfMDFe.Tot.QMDFe := IntToStr(descarga.InfMDFeTransp.Count);
  enviMDFe.MDFe.InfMDFe.Tot.VCarga := '15000.00';
  enviMDFe.MDFe.InfMDFe.Tot.CUnid := '01';
  enviMDFe.MDFe.InfMDFe.Tot.QCarga := '12300';

  lacre := enviMDFe.MDFe.InfMDFe.Lacres.Add;
  lacre.NLacre := 'AKUX10019KX';

  lacre := enviMDFe.MDFe.InfMDFe.Lacres.Add;
  lacre.NLacre := 'AKUX10020KX';

  lacre := enviMDFe.MDFe.InfMDFe.Lacres.Add;
  lacre.NLacre := 'AKUX10021KX';

  lacre := enviMDFe.MDFe.InfMDFe.Lacres.Add;
  lacre.NLacre := 'AKUX10020KX';

  // Autorizados a baixar o XML via consultar distribuição
  // Se não adicionar o próprio CNPJ quem emite não consulta
  autorizado := enviMDFe.MDFe.InfMDFe.AutXML.Add;
  autorizado.CNPJ := edtMDFeCnpj.Text;

  autorizado := enviMDFe.MDFe.InfMDFe.AutXML.Add;
  autorizado.CPF := '00000000191';

  enviMDFe.MDFe.InfMDFe.InfAdic.InfAdFisco := 'Informacoes de Adcionais do Fisco. Operacao nao tributada.';
  enviMDFe.MDFe.InfMDFe.InfAdic.InfCpl := 'Teste de geracao do XML do MDF-e.';

  Result := FormatXMLData( '<?xml version="1.0" encoding="UTF-8"?>' + enviMDFe.MDFe.XML );
end;

procedure TForm1.btnMDFeGerarXMLClick(Sender: TObject);
var
  chave, codigo, digito: string;
begin
  mmoMDFeRetorno.Lines.Add('Gerar XML MDFe');
  mmoMDFeRetorno.Lines.Add( GerarMDFeXML(chave, codigo, digito) );
  mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
  mmoMDFeRetorno.Lines.Add('Chave........: ' + chave);
  mmoMDFeRetorno.Lines.Add('cDFe.........: ' + codigo);
  mmoMDFeRetorno.Lines.Add('cDV..........: ' + digito);
  mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  memStream, toMem, fromMem: TMemoryStream;
  Str: String;
  StrStream: TStringStream;
  i,f : integer;
begin
  cdsConsultaNFe.Close;

  Memo2.Clear;

  memStream := TMemoryStream.Create;
  StrStream := TStringStream.Create('');
  try
    NFeIntegracaoContab('localhost',
                        edtCNPJContabil.Text,
                        edtCNPJBaixarXML.Text,
                        '65',
                        1,
                        1,
                        1,
                        ceUltNSU.AsInteger,
                        memStream);

    memStream.Position := 0;
    memStream.SaveToStream(StrStream);
    Str := StrStream.DataString;

    xtrloteDistNFeRS.TransformRead.SourceXml := StrStream.DataString;
    xtrloteDistNFeRS.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\loteDistNFeRS_v1.00.xsd.xtr';

    if chkConsSalvarXML.Checked then
    begin
      if FileExists('c:\a\Contador_'+edtCNPJBaixarXML.Text+'.xml') then
        DeleteFile('c:\a\Contador_'+edtCNPJBaixarXML.Text+'.xml');
      memStream.Position := 0;
      memStream.SaveToFile('c:\a\Contador_'+edtCNPJBaixarXML.Text+'.xml');
    end;

  finally
    FreeAndNil(memStream);
    FreeAndNil(StrStream);
  end;

  i := PosEx('<loteDistComp>', Str) + 14;
  f := PosEx('</loteDistComp>', Str, i);
  Str := Copy(Str, i, f - i);
  Str := IdDecoderMIME1.DecodeString(Str);
  Str := ZDecompressString(Str);

  Memo3.Lines.Text := Str;

  //cdsConsultaNFe.Open;
end;

function TForm1.DescompactarTexto(texto: string): string;
var
  temp : TStringStream;
  temp2 : TStringStream;
  DeZip: TDecompressionStream;
  i: Integer;
  //Buf: array[0..1023&93;of Byte;
  Buf: array[0..1023] of Byte;
  t : string;
begin
  temp := TStringStream.Create(texto);
  temp2 := TStringStream.Create('');
  DeZip:=TDecompressionStream.Create(temp);
  repeat
    i:=DeZip.Read(Buf, SizeOf(Buf));
  if i <> 0 then temp2.Write(Buf, i);
  until i <= 0;
  DeZip.Free;
  temp.Free;
  t := temp2.DataString;
  temp2.Free;
  Result := t;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  memStream, toMem, fromMem: TMemoryStream;
  Str: String;
  StrStream: TStringStream;
  i,f : integer;
begin
  memStream := TMemoryStream.Create;
  try
    NFeIntegracaoContab('localhost',
                        '40372766072',
                        '11844291000110',
                        '65',
                        1,
                        1,
                        1,
                        1,
                        memStream);


    StrStream := TStringStream.Create('');
    try
      memStream.Position := 0;
      memStream.SaveToStream(StrStream);
      Str := StrStream.DataString;
    finally
      FreeAndNil(StrStream);
    end;

    i := PosEx('<loteDistComp>', Str) + 14;
    f := PosEx('</loteDistComp>', Str, i);
    Str := Copy(Str, i, f - i);
    Str := IdDecoderMIME1.DecodeString(Str);
    Str := ZDecompressString(Str);

  finally
    FreeAndNil(memStream);
  end;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  NroProtocolo: string;
  ChaveAcesso: string;
  ConvTXT2XML: Boolean;
  CodigoErro: integer;
  MensagemErro: string;
  nota: integer;
  ChaveNfe: string;
  digito: string;
begin
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  try
    oNFe.LoadFromFile(ExtractFilePath(Application.ExeName) + 'XML\NFCe-modelo.xml');

    nota := StrToIntDef(edNF.Text, 1);
    nota := nota + 1;

    pcnAuxiliar.GerarChave(ChaveNfe,
                           StrToInt(edUF.Text),
                           nota,
                           65,
                           15,
                           nota,
                           1,
                           Now,
                           edCNPJ.Text);

    oNfe.Text := AnsiReplaceText(oNFe.Text, '<infNFe versao="4.00" Id="NFe">', '<infNFe versao="4.00" Id="'+ ChaveNfe +'">');
    oNFe.Text := AnsiReplaceText(oNFe.Text, '<cNF></cNF>', '<cNF>'+ IntToStr(nota) +'</cNF>');
    oNFe.Text := AnsiReplaceText(oNFe.Text, '<cDV></cDV>', '<cDV>'+ ChaveNfe[Length(ChaveNfe)] +'</cDV>');
    oNFe.Text := AnsiReplaceText(oNFe.Text, '<dhEmi></dhEmi>', '<dhEmi>'+ GetNowTimezone +'</dhEmi>');
    oNFe.Text := AnsiReplaceText(oNFe.Text, '<nNF></nNF>', '<nNF>'+ IntToStr(nota) +'</nNF>');

    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;

    lbChaveAcesso.Text := EnviarNFeSinc( 'localhost',
                                         edCNPJ.Text,
                                         oNFeStream,
                                         False,
                                         '000001',
                                         '674584B7-C75A-4F9C-BB12-EB27A42A3124',
                                         NroProtocolo);

    lbNroProtocolo.Caption := NroProtocolo;

    oNFeStream.Position    := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);

    if (CodigoErro > 0) then
      raise Exception.Create(MensagemErro);

    edNF.Text := IntToStr(StrToIntDef(edNF.Text, 0) + 1);
  finally
    FreeAndNil(oNFeStream);
    FreeAndNil(oNfe);
  end;
end;

end.
