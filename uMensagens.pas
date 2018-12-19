unit uMensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, Grids, DBGrids,
  StdCtrls, ExtCtrls, DBCtrls;

type
  TfrmMensagens = class(TForm)
    sdsMensagens: TSQLDataSet;
    sdsMensagensCODIGO: TStringField;
    sdsMensagensMENSAGEM: TStringField;
    dspMensagens: TDataSetProvider;
    cdsMensagens: TClientDataSet;
    cdsMensagensCODIGO: TStringField;
    cdsMensagensMENSAGEM: TStringField;
    dsMensagens: TDataSource;
    dgMensagens: TDBGrid;
    btnOk: TButton;
    btnCancelar: TButton;
    dbnMensagens: TDBNavigator;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagens: TfrmMensagens;

implementation

uses
  uSrcNfe;

{$R *.dfm}

procedure TfrmMensagens.btnCancelarClick(Sender: TObject);
begin
  if (cdsMensagens.ChangeCount > 0) then
  begin
    if (MessageDlg('Suas alterações serão perdidas.'+#13+#10+'Você deseja continuar?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
      cdsMensagens.CancelUpdates;
  end;
end;

procedure TfrmMensagens.btnOkClick(Sender: TObject);
begin
  if (cdsMensagens.ChangeCount > 0) then
  begin
    if (MessageDlg('Você deseja salvar as alterações?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
      cdsMensagens.ApplyUpdates(0);
  end;
end;

procedure TfrmMensagens.FormCreate(Sender: TObject);
begin
  cdsMensagens.Open;
end;

procedure TfrmMensagens.FormDestroy(Sender: TObject);
begin
  cdsMensagens.Close;
end;

end.
