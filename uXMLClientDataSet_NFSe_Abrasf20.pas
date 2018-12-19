unit uXMLClientDataSet_NFSe_Abrasf20;

interface

uses
  Windows, Classes, SysUtils, uXMLClientDataSet, DBClient, DB, XMLIntf;

type
  TXCDS_NFSe_Abrasf20 = class(TXMLClientDataset)
  protected
    procedure AdicionarTcCpfCnpj(AFieldDefs: TFieldDefs);
    procedure AdicionarTcEndereco(AFieldDefs: TFieldDefs);
    procedure AdicionarTcContato(AFieldDefs: TFieldDefs);
    procedure AdicionarTcIdentificacaoOrgaoGerador(AFieldDefs: TFieldDefs);
    procedure AdicionarTcIdentificacaoRps(AFieldDefs: TFieldDefs);
    procedure AdicionarTcIdentificacaoTomador(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDadosTomador(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDadosIntermediario(AFieldDefs: TFieldDefs);
    procedure AdicionarTcIdentificacaoIntermediario(AFieldDefs: TFieldDefs);
    procedure AdicionarTcValoresNfse(AFieldDefs: TFieldDefs);
    procedure AdicionarTcValoresDeclaracaoServico(AFieldDefs: TFieldDefs);
    procedure AdicionarTcServico(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDadosServico(AFieldDefs: TFieldDefs); virtual;
    procedure AdicionarTcDadosConstrucaoCivil(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDadosPrestador(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDeclaracaoPrestacaoServico(AFieldDefs: TFieldDefs); virtual;
    procedure AdicionarTcInfDeclaracaoPrestacaoServico(AFieldDefs: TFieldDefs);
    procedure AdicionarTcInfRps(AFieldDefs: TFieldDefs);
    procedure AdicionarListaRps(AFieldDefs: TFieldDefs);
  end;

  TXCDS_NFSe_Abrasf20_Retorno = class(TXCDS_NFSe_Abrasf20)
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
  end;

  TXCDS_NFSe_Abrasf20_Envio = class(TXCDS_NFSe_Abrasf20)
  private
    FId: string;
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
    procedure Processar_NodeAttributes(AClientDataSet: TClientDataSet; ANode: IXMLNode); override;
  public
    property Id: string read FId write FId;
  end;

  TXCDS_NFSe_EstanciaVelha_Envio = class(TXCDS_NFSe_Abrasf20_Envio)
  protected
    procedure AdicionarTcDeclaracaoPrestacaoServico(AFieldDefs: TFieldDefs); override;
    procedure AdicionarTcDadosServico(AFieldDefs: TFieldDefs); override;
  end;

  TXCDS_NFSe_EstanciaVelha_Retorno = class(TXCDS_NFSe_Abrasf20_Retorno)
  end;

implementation

uses StrUtils;

{ TXCDS_NFSe_Abrasf20_Retorno }

procedure TXCDS_NFSe_Abrasf20_Retorno.CarregarCampos(
  AClientDataSet: TClientDataSet);
begin
  inherited;
  AClientDataSet.FieldDefs.Add('Numero', ftString, 15);
  AClientDataSet.FieldDefs.Add('CodigoVerificacao', ftString, 9);
  AClientDataSet.FieldDefs.Add('DataEmissao', ftDate);

  AClientDataSet.FieldDefs.Add('OutrasInformacoes', ftString, 255);

  AClientDataSet.FieldDefs.Add('ValoresNfse', ftADT);
  AdicionarTcValoresNfse(AClientDataSet.FieldDefs.Find('ValoresNfse').ChildDefs);

  AClientDataSet.FieldDefs.Add('ValorCredito', ftFloat);

  AClientDataSet.FieldDefs.Add('EnderecoPrestadorServico', ftADT);
  AdicionarTcEndereco(AClientDataSet.FieldDefs.Find('EnderecoPrestadorServico').ChildDefs);

  AClientDataSet.FieldDefs.Add('OrgaoGerador', ftADT);
  AdicionarTcIdentificacaoOrgaoGerador(AClientDataSet.FieldDefs.Find('OrgaoGerador').ChildDefs);

  AClientDataSet.FieldDefs.Add('DeclaracaoPrestacaoServico', ftADT);
  AdicionarTcDeclaracaoPrestacaoServico(AClientDataSet.FieldDefs.Find('DeclaracaoPrestacaoServico').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20_Retorno.ConverterXML(
  AClientDataSet: TClientDataSet);
var
  xNode: IXMLNode;
  I: Integer;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    if (xNode.NodeName = 'ConsultarNfseRpsResposta') then
    begin               // ListaNfse
      for I := 0 to xNode.ChildNodes[0].ChildNodes.Count - 1 do
      begin
        AClientDataSet.Append;                     // ListaNfse   / CompNfse    / Nfse        / InfNfse 
        Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0].ChildNodes[I].ChildNodes[0].ChildNodes[0], '');
        AClientDataSet.Post;
      end;
    end;
  end;
end;

{ TXCDS_NFSe_Abrasf20 }

procedure TXCDS_NFSe_Abrasf20.AdicionarListaRps(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Rps', ftADT);
  AdicionarTcDeclaracaoPrestacaoServico(AFieldDefs.Find('Rps').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcContato(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Telefone', ftString, 11);
  AFieldDefs.Add('Email', ftString, 80);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcCpfCnpj(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Cpf', ftString, 11);
  AFieldDefs.Add('Cnpj', ftString, 14);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDadosConstrucaoCivil(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CodigoObra', ftString, 15);
  AFieldDefs.Add('Art', ftString, 15);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDadosIntermediario(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoIntermediario', ftADT);
  AdicionarTcIdentificacaoIntermediario(AFieldDefs.Find('IdentificacaoIntermediario').ChildDefs);

  AFieldDefs.Add('RazaoSocial', ftString, 115);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDadosPrestador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AFieldDefs.Find('CpfCnpj').ChildDefs);

  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
  AFieldDefs.Add('RazaoSocial', ftString, 115);
  AFieldDefs.Add('NomeFantasia', ftString, 60);

  AFieldDefs.Add('Endereco', ftADT);
  AdicionarTcEndereco(AFieldDefs.Find('Endereco').ChildDefs);

  AFieldDefs.Add('Contato', ftADT);
  AdicionarTcContato(AFieldDefs.Find('Contato').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDadosServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Valores', ftADT);
  AdicionarTcValoresDeclaracaoServico(AFieldDefs.Find('Valores').ChildDefs);

  AFieldDefs.Add('IssRetido', ftInteger);
  AFieldDefs.Add('ResponsavelRetencao', ftInteger);
  AFieldDefs.Add('ItemListaServico', ftString, 5);
  AFieldDefs.Add('CodigoCnae', ftInteger);
  AFieldDefs.Add('CodigoTributacaoMunicipio', ftString, 20);
  AFieldDefs.Add('Discriminacao', ftString, 2000);
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
  AFieldDefs.Add('CodigoPais', ftString, 4);
  AFieldDefs.Add('ExigibilidadeISS', ftInteger);
  AFieldDefs.Add('MunicipioIncidencia', ftInteger);
  AFieldDefs.Add('NumeroProcesso', ftString, 30);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDadosTomador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoTomador', ftADT);
  AdicionartcIdentificacaoTomador(AFieldDefs.Find('IdentificacaoTomador').ChildDefs);

  AFieldDefs.Add('RazaoSocial', ftString, 115);

  AFieldDefs.Add('Endereco', ftADT);
  AdicionarTcEndereco(AFieldDefs.Find('Endereco').ChildDefs);

  AFieldDefs.Add('Contato', ftADT);
  AdicionarTcContato(AFieldDefs.Find('Contato').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcDeclaracaoPrestacaoServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('InfDeclaracaoPrestacaoServico', ftADT);
  AdicionarTcInfDeclaracaoPrestacaoServico(AFieldDefs.Find('InfDeclaracaoPrestacaoServico').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcEndereco(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Endereco', ftString, 125);
  AFieldDefs.Add('Numero', ftString, 10);
  AFieldDefs.Add('Complemento', ftString, 60);
  AFieldDefs.Add('Bairro', ftString, 60);
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
  AFieldDefs.Add('Uf', ftString, 2);
  AFieldDefs.Add('CodigoPais', ftString, 4);
  AFieldDefs.Add('Cep', ftInteger);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcIdentificacaoIntermediario(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AFieldDefs.Find('CpfCnpj').ChildDefs);

  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcIdentificacaoOrgaoGerador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
  AFieldDefs.Add('Uf', ftString, 2);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcIdentificacaoRps(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Numero', ftString, 15);
  AFieldDefs.Add('Serie', ftString, 5);
  AFieldDefs.Add('Tipo', ftInteger);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcIdentificacaoTomador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AFieldDefs.Find('CpfCnpj').ChildDefs);
  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcInfDeclaracaoPrestacaoServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Rps', ftADT);
  AdicionartcInfRps(AFieldDefs.Find('Rps').ChildDefs);

  AFieldDefs.Add('Competencia', ftDate);
  AFieldDefs.Add('IdCidade', ftInteger);
  AFieldDefs.Add('SiglaUF', ftString, 2);

  AFieldDefs.Add('Servico', ftADT);
  AdicionarTcDadosServico(AFieldDefs.Find('Servico').ChildDefs);

  AFieldDefs.Add('Prestador', ftADT);
  AdicionarTcIdentificacaoTomador(AFieldDefs.Find('Prestador').ChildDefs);

  AFieldDefs.Add('Tomador', ftADT);
  AdicionartcDadosTomador(AFieldDefs.Find('Tomador').ChildDefs);

  AFieldDefs.Add('Intermediario', ftADT);
  AdicionarTcDadosIntermediario(AFieldDefs.Find('Intermediario').ChildDefs);

  AFieldDefs.Add('ConstrucaoCivil', ftADT);
  AdicionartcDadosConstrucaoCivil(AFieldDefs.Find('ConstrucaoCivil').ChildDefs);

  AFieldDefs.Add('RegimeEspecialTributacao', ftInteger);
  AFieldDefs.Add('OptanteSimplesNacional', ftInteger);
  AFieldDefs.Add('IncentivoFiscal', ftInteger);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcInfRps(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoRps', ftADT);
  AdicionarTcIdentificacaoRps(AFieldDefs.Find('IdentificacaoRps').ChildDefs);

  AFieldDefs.Add('DataEmissao', ftDate);
  AFieldDefs.Add('Status', ftInteger);

  AFieldDefs.Add('RpsSubstituido', ftADT);
  AdicionarTcIdentificacaoRps(AFieldDefs.Find('RpsSubstituido').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcServico(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('tcDadosServico', ftADT);
  AdicionarTcDadosServico(AFieldDefs.Find('tcDadosServico').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcValoresDeclaracaoServico(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('ValorServicos', ftFloat);
  AFieldDefs.Add('ValorDeducoes', ftFloat);
  AFieldDefs.Add('ValorPis', ftFloat);
  AFieldDefs.Add('ValorCofins', ftFloat);
  AFieldDefs.Add('ValorInss', ftFloat);
  AFieldDefs.Add('ValorIr', ftFloat);
  AFieldDefs.Add('ValorCsll', ftFloat);
  AFieldDefs.Add('OutrasRetencoes', ftInteger);
  AFieldDefs.Add('ValorIss', ftFloat);
  AFieldDefs.Add('Aliquota', ftFloat);
  AFieldDefs.Add('DescontoIncondicionado', ftFloat);
  AFieldDefs.Add('DescontoCondicionado', ftFloat);
end;

procedure TXCDS_NFSe_Abrasf20.AdicionarTcValoresNfse(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('BaseCalculo', ftFloat);
  AFieldDefs.Add('Aliquota', ftFloat);
  AFieldDefs.Add('ValorIss', ftFloat);
  AFieldDefs.Add('ValorLiquidoNfse', ftFloat);
end;

{ TXCDS_NFSe_Abrasf20_Envio }

procedure TXCDS_NFSe_Abrasf20_Envio.CarregarCampos(
  AClientDataSet: TClientDataSet);
begin
  inherited;
  AClientDataSet.FieldDefs.Add('NumeroLote', ftString, 15);

  AClientDataSet.FieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AClientDataSet.FieldDefs.Find('CpfCnpj').ChildDefs);

  AClientDataSet.FieldDefs.Add('InscricaoMunicipal', ftString, 15);
  AClientDataSet.FieldDefs.Add('QuantidadeRps', ftInteger);

  AClientDataSet.FieldDefs.Add('ListaRps', ftADT);
  AdicionarListaRps(AClientDataSet.FieldDefs.Find('ListaRps').ChildDefs);
end;

procedure TXCDS_NFSe_Abrasf20_Envio.ConverterParaXML(
  AClientDataSet: TClientDataSet; ATodosRegistros: Boolean);
var
  Node: IXMLNode;
begin
  if (AClientDataSet.RecordCount = 0) then
    raise Exception.Create('Não foi informado nenhuma nota.')
  else if (AClientDataSet.RecordCount > 1) then
    raise Exception.Create('Deve ser informado apenas uma nota.');

  Node := XMLDoc.AddChild('EnviarLoteRpsSincronoEnvio');
  Node.Attributes['xmlns'] := 'http://www.abrasf.org.br/nfse.xsd';
  
  Node := Node.AddChild('LoteRps');
  Node.Attributes['Id'] := FId;
  Node.Attributes['versao'] := '20.01';

  Processar_NodesXML(AClientDataSet.Fields, Node, '');
end;

procedure TXCDS_NFSe_Abrasf20_Envio.ConverterXML(
  AClientDataSet: TClientDataSet);
var
  xNode: IXMLNode;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    // Verifica o CompNfse
    if (xNode.NodeName = 'EnviarLoteRpsSincronoEnvio') then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0], '');
      AClientDataSet.Post;
    end;
  end;
end;

procedure TXCDS_NFSe_Abrasf20_Envio.Processar_NodeAttributes(
  AClientDataSet: TClientDataSet; ANode: IXMLNode);
begin
  inherited;
  if SameText(ANode.NodeName, 'InfDeclaracaoPrestacaoServico') then
  begin
    ANode.Attributes['Id'] := FId;
  end
end;

{ TXCDS_NFSe_EstanciaVelha_Envio }

procedure TXCDS_NFSe_EstanciaVelha_Envio.AdicionarTcDadosServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('tcDadosServico', ftADT);
  inherited AdicionarTcDadosServico(AFieldDefs.Find('tcDadosServico').ChildDefs);
end;

procedure TXCDS_NFSe_EstanciaVelha_Envio.AdicionarTcDeclaracaoPrestacaoServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('tcDeclaracaoPrestacaoServico', ftADT);
  inherited AdicionarTcDeclaracaoPrestacaoServico(AFieldDefs.Find('tcDeclaracaoPrestacaoServico').ChildDefs);
end;

end.
