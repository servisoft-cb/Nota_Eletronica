unit uXMLClientDataSet_NFSe_NH;

interface

uses
  Windows, Classes, SysUtils, uXMLClientDataSet, DBClient, DB, XMLIntf;

type
  TXMLClientDataset_NFSe_NH = class(TXMLClientDataset)
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
  end;

implementation

{ TXMLClientDataset_NFSe_NH }

procedure TXMLClientDataset_NFSe_NH.CarregarCampos(AClientDataSet: TClientDataSet);
var
  Def, Def2: TFieldDef;
begin
  AClientDataSet.FieldDefs.Add('Numero', ftInteger);
  AClientDataSet.FieldDefs.Add('CodigoVerificacao', ftString, 9);
  AClientDataSet.FieldDefs.Add('DataEmissao', ftString, 20);

  AClientDataSet.FieldDefs.Add('IdentificacaoRps', ftADT);
  Def := AClientDataSet.FieldDefs.Find('IdentificacaoRps');
  AddADTChield(Def, 'Numero', ftInteger);
  AddADTChield(Def, 'Serie', ftString, 5);
  AddADTChield(Def, 'Tipo', ftInteger);

  AClientDataSet.FieldDefs.Add('DataEmissaoRps', ftString, 20);
  AClientDataSet.FieldDefs.Add('NaturezaOperacao', ftInteger);
  AClientDataSet.FieldDefs.Add('RegimeEspecialTributacao', ftInteger);
  AClientDataSet.FieldDefs.Add('OptanteSimplesNacional', ftInteger);
  AClientDataSet.FieldDefs.Add('IncentivadorCultural', ftInteger);
  AClientDataSet.FieldDefs.Add('Competencia', ftString, 8);
  AClientDataSet.FieldDefs.Add('OutrasInformacoes', ftString, 255);

  AClientDataSet.FieldDefs.Add('Servico', ftADT);
  Def := AClientDataSet.FieldDefs.Find('Servico');
  AddADTChield(Def, 'Valores', ftADT);
  AddADTChield(Def, 'ItemListaServico', ftString, 5);
  AddADTChield(Def, 'CodigoCnae', ftInteger);
  AddADTChield(Def, 'CodigoTributacaoMunicipio', ftString, 20);
  AddADTChield(Def, 'MunicipioPrestacaoServico', ftInteger);

  Def2 := Def.ChildDefs.Find('Valores');
  AddADTChield(Def2, 'ValorServicos', ftFloat);
  AddADTChield(Def2, 'ValorDeducoes', ftFloat);
  AddADTChield(Def2, 'ValorPis', ftFloat);
  AddADTChield(Def2, 'ValorCofins', ftFloat);
  AddADTChield(Def2, 'ValorInss', ftFloat);
  AddADTChield(Def2, 'ValorIr', ftFloat);
  AddADTChield(Def2, 'ValorCsll', ftFloat);
  AddADTChield(Def2, 'IssRetido', ftInteger);
  AddADTChield(Def2, 'ValorIss', ftFloat);
  AddADTChield(Def2, 'BaseCalculo', ftFloat);
  AddADTChield(Def2, 'Aliquota', ftFloat);
  AddADTChield(Def2, 'ValorLiquidoNfse', ftFloat);
  AddADTChield(Def2, 'ValorIssRetido', ftFloat);
  AddADTChield(Def2, 'DescontoCondicionado', ftFloat);
  AddADTChield(Def2, 'DescontoIncondicionado', ftFloat);

  AClientDataSet.FieldDefs.Add('NfseSubstituida', ftInteger);
  AClientDataSet.FieldDefs.Add('ValorCredito', ftFloat);

  AClientDataSet.FieldDefs.Add('PrestadorServico', ftADT);
  Def := AClientDataSet.FieldDefs.Find('PrestadorServico');
  AddADTChield(Def, 'IdentificacaoPrestador', ftADT);
  AddADTChield(Def, 'RazaoSocial', ftString, 115);
  AddADTChield(Def, 'NomeFantasia', ftString, 115);
  AddADTChield(Def, 'Endereco', ftADT);
  AddADTChield(Def, 'Contato', ftADT);

  Def2 := Def.ChildDefs.Find('IdentificacaoPrestador');
  AddADTChield(Def2, 'CpfCnpj', ftADT);
  AddADTChield(Def2, 'InscricaoMunicipal', ftString, 15);

  Def2 := Def2.ChildDefs.Find('CpfCnpj');
  AddADTChield(Def2, 'Cpf', ftString, 11);
  AddADTChield(Def2, 'Cnpj', ftString, 14);

  Def2 := Def.ChildDefs.Find('Endereco');
  AddADTChield(Def2, 'Endereco', ftString, 125);
  AddADTChield(Def2, 'Numero', ftString, 10);
  AddADTChield(Def2, 'Complemento', ftString, 60);
  AddADTChield(Def2, 'Bairro', ftString, 60);
  AddADTChield(Def2, 'Cidade', ftInteger);
  AddADTChield(Def2, 'Estado', ftString, 2);
  AddADTChield(Def2, 'Cep', ftInteger);

  Def2 := Def.ChildDefs.Find('Contato');
  AddADTChield(Def2, 'Endereco', ftString, 11);
  AddADTChield(Def2, 'Email', ftString, 80);

  AClientDataSet.FieldDefs.Add('TomadorServico', ftADT);
  Def := AClientDataSet.FieldDefs.Find('TomadorServico');
  AddADTChield(Def, 'IdentificacaoTomador', ftADT);
  AddADTChield(Def, 'RazaoSocial', ftString, 115);
  AddADTChield(Def, 'Endereco', ftADT);
  AddADTChield(Def, 'Contato', ftADT);

  Def2 := Def.ChildDefs.Find('IdentificacaoTomador');
  AddADTChield(Def2, 'CpfCnpj', ftADT);
  AddADTChield(Def2, 'InscricaoMunicipal', ftString, 15);

  Def2 := Def2.ChildDefs.Find('CpfCnpj');
  AddADTChield(Def2, 'Cpf', ftString, 11);
  AddADTChield(Def2, 'Cnpj', ftString, 14);

  Def2 := Def.ChildDefs.Find('Endereco');
  AddADTChield(Def2, 'Endereco', ftString, 125);
  AddADTChield(Def2, 'Numero', ftString, 10);
  AddADTChield(Def2, 'Complemento', ftString, 60);
  AddADTChield(Def2, 'Bairro', ftString, 60);
  AddADTChield(Def2, 'Cidade', ftInteger);
  AddADTChield(Def2, 'Estado', ftString, 2);
  AddADTChield(Def2, 'Cep', ftInteger);

  Def2 := Def.ChildDefs.Find('Contato');
  AddADTChield(Def2, 'Endereco', ftString, 11);
  AddADTChield(Def2, 'Email', ftString, 80);

  AClientDataSet.FieldDefs.Add('IntermediarioServico', ftADT);
  Def := AClientDataSet.FieldDefs.Find('IntermediarioServico');
  AddADTChield(Def, 'RazaoSocial', ftString, 115);
  AddADTChield(Def2, 'CpfCnpj', ftADT);
  AddADTChield(Def2, 'InscricaoMunicipal', ftString, 15);

  Def2 := Def2.ChildDefs.Find('CpfCnpj');
  AddADTChield(Def2, 'Cpf', ftString, 11);
  AddADTChield(Def2, 'Cnpj', ftString, 14);

  AClientDataSet.FieldDefs.Add('OrgaoGerador', ftADT);
  Def := AClientDataSet.FieldDefs.Find('OrgaoGerador');
  AddADTChield(Def, 'CodigoMunicipio', ftInteger);
  AddADTChield(Def, 'Uf', ftInteger);
end;

procedure TXMLClientDataset_NFSe_NH.ConverterXML(AClientDataSet: TClientDataSet);
var
  xNode, xAtt, xLista, xCompNfse: IXMLNode;
  sPrefixo: String;
  I: Integer;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      // Percorre a lista
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        AClientDataSet.Append;
        xCompNfse := xLista.ChildNodes[I];
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(AClientDataSet.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        AClientDataSet.Post;
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        AClientDataSet.Append;
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(AClientDataSet.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        AClientDataSet.Post;
      end;
    end;
  end;
end;

end.
