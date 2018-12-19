unit uNotasDestinadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, DB, DBClient, Provider, Xmlxform, Grids, DBGrids,
  StdCtrls, DBCtrls, dbcgrids, RzDBGrid;

type
  TfrmNFeDestinadas = class(TForm)
    xtrNFeDestinadas: TXMLTransformProvider;
    cdsNFeDestinadas: TClientDataSet;
    cdsNFeDestinadasNSU: TIntegerField;
    cdsNFeDestinadaschNFe: TStringField;
    cdsNFeDestinadasxNome: TStringField;
    cdsNFeDestinadasIE: TStringField;
    cdsNFeDestinadasdEmi: TDateTimeField;
    cdsNFeDestinadastpNF: TIntegerField;
    cdsNFeDestinadasvNF: TFloatField;
    cdsNFeDestinadasdigVal: TStringField;
    cdsNFeDestinadasdhRecbto: TDateTimeField;
    cdsNFeDestinadascSitNFe: TIntegerField;
    cdsNFeDestinadascSitConf: TIntegerField;
    dsNFeDestinadas: TDataSource;
    cdsNFeDestinadasSituacaoNFe: TStringField;
    cdsNFeDestinadasSituacaoManDest: TStringField;
    cdsNFeDestinadasTipoOperacao: TStringField;
    cdsNFeDestinadasCNPJ: TStringField;
    cdsNFeDestinadasCPF: TStringField;
    Label3: TLabel;
    cbIndNFe: TComboBox;
    Label5: TLabel;
    cbIndEmi: TComboBox;
    btnPesquisar: TButton;
    RzDBGrid1: TRzDBGrid;
    btnContinuacao: TButton;
    btnSelecionar: TButton;
    btnCancelar: TButton;
    procedure cdsNFeDestinadasCalcFields(DataSet: TDataSet);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnContinuacaoClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure RzDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    FChaveAcesso: string;
    FCNPJ: string;
    FUltNSU: String;
    procedure Consultar;
  public
    { Public declarations }
    property ChaveAcesso: string read FChaveAcesso;
    property CNPJ: string read FCNPJ write FCNPJ;
  end;

var
  frmNFeDestinadas: TfrmNFeDestinadas;

implementation

uses
  uNFeComandos;

{$R *.dfm}

procedure TfrmNFeDestinadas.cdsNFeDestinadasCalcFields(DataSet: TDataSet);
begin
  case cdsNFeDestinadastpNF.AsInteger of
    0: cdsNFeDestinadasTipoOperacao.AsString := 'Entrada';
    1: cdsNFeDestinadasTipoOperacao.AsString := 'Saída';
  end;

  case cdsNFeDestinadascSitNFe.AsInteger of
    1: cdsNFeDestinadasSituacaoNFe.AsString := 'Uso autorizado no momento da consulta';
    2: cdsNFeDestinadasSituacaoNFe.AsString := 'Uso denegado';
    3: cdsNFeDestinadasSituacaoNFe.AsString := 'NF-e cancelada';
  end;

  case cdsNFeDestinadascSitConf.AsInteger of
    0: cdsNFeDestinadasSituacaoManDest.AsString := 'Sem Manifestação do Destinatário';
    1: cdsNFeDestinadasSituacaoManDest.AsString := 'Confirmada Operação';
    2: cdsNFeDestinadasSituacaoManDest.AsString := 'Desconhecida';
    3: cdsNFeDestinadasSituacaoManDest.AsString := 'Operação não Realizada';
    4: cdsNFeDestinadasSituacaoManDest.AsString := 'Ciência';
  end;
end;

procedure TfrmNFeDestinadas.Consultar;
var
  RetXml: TMemoryStream;
  StrXml: TStringStream;
  IndCont: Integer;
begin
  btnSelecionar.Enabled := False;
  cdsNFeDestinadas.Close;

  RetXml := TMemoryStream.Create;
  try
    FUltNSU := ConsultarNFeDestinada('localhost',
                                     FCNPJ,
                                     cbIndNFe.ItemIndex,
                                     cbIndEmi.ItemIndex,
                                     FUltNSU,
                                     RetXml,
                                     IndCont);

    RetXml.Position := 0;
    StrXml := TStringStream.Create('');
    try
      StrXml.CopyFrom(RetXml, RetXml.Size);
      xtrNFeDestinadas.TransformRead.SourceXml := StrXml.DataString;
      xtrNFeDestinadas.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaNFeDestinada.xtr';
      cdsNFeDestinadas.Open;

      btnContinuacao.Enabled := IndCont > 0;
      btnSelecionar.Enabled  := not cdsNFeDestinadas.IsEmpty;
    finally
      FreeAndNil(StrXml);
    end;
  finally
    FreeAndNil(RetXml);
  end;
end;

procedure TfrmNFeDestinadas.btnPesquisarClick(Sender: TObject);
begin
  FUltNSU := '0';
  Consultar;
end;

procedure TfrmNFeDestinadas.btnContinuacaoClick(Sender: TObject);
begin
  Consultar;
end;

procedure TfrmNFeDestinadas.btnSelecionarClick(Sender: TObject);
begin
  FChaveAcesso := cdsNFeDestinadaschNFe.AsString;
end;

procedure TfrmNFeDestinadas.RzDBGrid1DblClick(Sender: TObject);
begin
  if btnSelecionar.Enabled then
    btnSelecionar.Click;
end;

end.
