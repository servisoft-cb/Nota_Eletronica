program NFe;

uses
  Forms,
  uNFe in 'uNFe.pas' {Form1},
  nfe_v110 in 'nfe_v110.pas',
  uNFeComandos in '..\uNFeComandos.pas',
  uNFeConsts in '..\NFESrv\uNFeConsts.pas',
  uNotasDestinadas in 'uNotasDestinadas.pas' {frmNFeDestinadas},
  uXMLClientDataSet in 'uXMLClientDataSet.pas',
  uXMLClientDataSet_NFSe_CampoBom in 'uXMLClientDataSet_NFSe_CampoBom.pas',
  uXMLClientDataSet_NFSe_NH in 'uXMLClientDataSet_NFSe_NH.pas',
  uXMLClientDataSet_NFSe_PortoAlegre in 'uXMLClientDataSet_NFSe_PortoAlegre.pas',
  uXMLClientDataSet_NFSe_Abrasf20 in 'uXMLClientDataSet_NFSe_Abrasf20.pas',
  mdfeModalAereo_v300 in 'mdfe\mdfeModalAereo_v300.pas',
  mdfeModalAquaviario_v300 in 'mdfe\mdfeModalAquaviario_v300.pas',
  mdfeModalFerroviario_v300 in 'mdfe\mdfeModalFerroviario_v300.pas',
  mdfeModalRodoviario_v300 in 'mdfe\mdfeModalRodoviario_v300.pas',
  enviMDFe_v300 in 'mdfe\enviMDFe_v300.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
