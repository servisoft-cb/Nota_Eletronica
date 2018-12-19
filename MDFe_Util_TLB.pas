unit MDFe_Util_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 09/03/2017 14:37:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: E:\pessoal\!desenvolvimento\cleomar\FlexDocs\MDFe_Util.tlb (1)
// LIBID: {193BFFFA-6A62-4FE9-8FCC-61B30C0EF0AC}
// LCID: 0
// Helpfile: 
// HelpString: Biblioteca de utilidades da MDF-e - versão 3.0.0 (2.0.0.0)
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.0 mscorlib, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscorlib.tlb)
//   (3) v2.0 System, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.tlb)
//   (4) v2.0 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.Windows.Forms.tlb)
// Errors:
//   Hint: Parameter 'mod' of MDFe_Util_Interface.ide_v3 changed to 'mod_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, mscorlib_TLB, OleServer, StdVCL, System_TLB, 
System_Windows_Forms_TLB, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MDFe_UtilMajorVersion = 3;
  MDFe_UtilMinorVersion = 0;

  LIBID_MDFe_Util: TGUID = '{193BFFFA-6A62-4FE9-8FCC-61B30C0EF0AC}';

  IID__MDFeRecepcaoEvento: TGUID = '{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}';
  IID__MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg: TGUID = '{5280CC24-55FB-3BBE-8C5C-1762218E2C44}';
  IID__mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}';
  IID__mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{92D1C635-8F37-3CD5-BFCB-161188112D40}';
  IID__MDFeConsNaoEnc: TGUID = '{92584D91-FEA6-3931-8EFA-F44363BA65BE}';
  IID__MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg: TGUID = '{5D90EC74-8A68-31A5-A63C-61A764A4A699}';
  IID__mdfeConsNaoEncCompletedEventHandler: TGUID = '{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}';
  IID__mdfeConsNaoEncCompletedEventArgs: TGUID = '{B416D19C-550A-3FBB-BCFF-20770BFB92BA}';
  IID__MDFeRecepcao: TGUID = '{B52A01C4-3A4A-3666-BD76-2B8422F36483}';
  IID__MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg: TGUID = '{2630A142-3E16-3E90-AF7B-18FE8F44401B}';
  IID__mdfeRecepcaoLoteCompletedEventHandler: TGUID = '{39DF352B-6BAA-34C3-9B16-09B581AD241B}';
  IID__mdfeRecepcaoLoteCompletedEventArgs: TGUID = '{BDC92FCB-0160-342C-B254-902050B2ECDF}';
  IID__MDFeConsulta: TGUID = '{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}';
  IID__MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg: TGUID = '{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}';
  IID__mdfeConsultaMDFCompletedEventHandler: TGUID = '{92FBCB84-CD8B-30DA-B289-558A3F030C7F}';
  IID__mdfeConsultaMDFCompletedEventArgs: TGUID = '{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}';
  IID__MDFeDistribuicaoDFe: TGUID = '{FACF3646-B238-333D-A6E7-9D8F9E1BC312}';
  IID__MDFe_Util_MDFeDistDFe_mdfeCabecMsg: TGUID = '{393D3C44-2517-3083-B366-D6E8043BF94F}';
  IID__mdfeDistDFeInteresseCompletedEventHandler: TGUID = '{283B61BD-3ADA-370F-A190-FB29CD866165}';
  IID__mdfeDistDFeInteresseCompletedEventArgs: TGUID = '{84F5E58E-5089-3612-ABFC-556C7DA130ED}';
  IID__MDFeStatusServico: TGUID = '{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}';
  IID__MDFe_Util_mdfeStatusServico_mdfeCabecMsg: TGUID = '{FB4100DC-90E2-307D-A3DA-D715026E0711}';
  IID__mdfeStatusServicoMDFCompletedEventHandler: TGUID = '{BFD539C2-29D0-3E47-914F-1A77B699A2F6}';
  IID__mdfeStatusServicoMDFCompletedEventArgs: TGUID = '{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}';
  IID__NFeWebDownLoad: TGUID = '{BFD1C7D3-0B72-3F88-A966-6309386C7028}';
  IID__MDFeRetRecepcao: TGUID = '{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}';
  IID__MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg: TGUID = '{F2E87B32-6F12-3609-8246-7EC46C6DE449}';
  IID__mdfeRetRecepcaoCompletedEventHandler: TGUID = '{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}';
  IID__mdfeRetRecepcaoCompletedEventArgs: TGUID = '{EA0DD1F0-545D-3026-A17C-295B9D482F45}';
  IID_MDFe_Util_Interface: TGUID = '{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}';
  DIID_MDFe_Util_Events: TGUID = '{0A005D06-B8C1-46CA-8270-56D108D21C84}';
  CLASS_Util: TGUID = '{02E8B11B-30A6-479B-82BF-9AD7ECEE187D}';
  CLASS_MDFeRecepcaoEvento: TGUID = '{111BB850-B097-3B74-8E70-85C0B47F85F0}';
  CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg: TGUID = '{BD56CAC6-2535-3917-AA3D-1FE3C9781055}';
  CLASS_mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{8A8B6B59-ABC7-3E3D-8DD2-2E6754B757EC}';
  CLASS_mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{2527711D-E468-3ED5-8127-84363019C9F9}';
  CLASS_MDFeConsNaoEnc: TGUID = '{6C06A5B6-C2E6-34AD-855F-81A2D2031FD0}';
  CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg: TGUID = '{FDF94590-835C-3759-A32F-1E0DC92F2E48}';
  CLASS_mdfeConsNaoEncCompletedEventHandler: TGUID = '{4871912B-EBFD-314F-A5C3-C8E35E4D9787}';
  CLASS_mdfeConsNaoEncCompletedEventArgs: TGUID = '{90B13D99-BB7D-32DD-A2E8-519B5CD65F16}';
  CLASS_MDFeRecepcao: TGUID = '{14C969D3-4712-31B6-8FD8-42D407FE9881}';
  CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg: TGUID = '{530A25CF-CBFA-3AA9-9AF5-0792E924E7CE}';
  CLASS_mdfeRecepcaoLoteCompletedEventHandler: TGUID = '{C1EB5CC8-CCDE-3FC2-890F-02CA003D9ABA}';
  CLASS_mdfeRecepcaoLoteCompletedEventArgs: TGUID = '{81CC34D0-A081-367F-81B7-4A799417CF30}';
  CLASS_MDFeConsulta: TGUID = '{5B6456AF-95FB-3D3A-ABA3-7E2CBFDD5882}';
  CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg: TGUID = '{82388B26-38A4-3E3D-9B2D-B1FFA6C49DE8}';
  CLASS_mdfeConsultaMDFCompletedEventHandler: TGUID = '{4DC720EF-9978-3D5D-AD2F-E9F02D24239C}';
  CLASS_mdfeConsultaMDFCompletedEventArgs: TGUID = '{13FD90F3-9B15-3FBF-A675-9F510FCD8FDF}';
  CLASS_MDFeDistribuicaoDFe: TGUID = '{41DAFA77-A020-3088-ADF1-B2ADBB2582CD}';
  CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg: TGUID = '{C1B6F937-6531-3C14-BE37-069AC4CC6B80}';
  CLASS_mdfeDistDFeInteresseCompletedEventHandler: TGUID = '{12F871B7-A709-3671-A8CC-CC5C390AF83C}';
  CLASS_mdfeDistDFeInteresseCompletedEventArgs: TGUID = '{60E55FF9-4875-32BA-852F-71E2B4E7897A}';
  CLASS_MDFeStatusServico: TGUID = '{2D82796B-24E4-3AD4-B60D-BCA9DBFB4ADC}';
  CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg: TGUID = '{692A88E5-5E7A-3D41-88BB-AA5ACA61B59C}';
  CLASS_mdfeStatusServicoMDFCompletedEventHandler: TGUID = '{C05C3AFC-0BA7-3FF6-AFF6-AB923BF6336A}';
  CLASS_mdfeStatusServicoMDFCompletedEventArgs: TGUID = '{C2B1D39B-D012-3813-BAF6-8FBE6ECCD340}';
  CLASS_NFeWebDownLoad: TGUID = '{7AB629DD-2A35-3CB3-9D8F-0F71493966DE}';
  CLASS_MDFeRetRecepcao: TGUID = '{C2DEEC73-37C3-3F3A-8559-104A4CFEC88E}';
  CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg: TGUID = '{EFEB533E-85D5-3C29-B1CA-A27C4DDE15FF}';
  CLASS_mdfeRetRecepcaoCompletedEventHandler: TGUID = '{DCB2DE58-6F67-3A6B-A7B0-563E79771235}';
  CLASS_mdfeRetRecepcaoCompletedEventArgs: TGUID = '{1562C840-700E-3B9E-B4C4-864EF3733253}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _MDFeRecepcaoEvento = interface;
  _MDFeRecepcaoEventoDisp = dispinterface;
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventHandler = interface;
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventArgs = interface;
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _MDFeConsNaoEnc = interface;
  _MDFeConsNaoEncDisp = dispinterface;
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp = dispinterface;
  _mdfeConsNaoEncCompletedEventHandler = interface;
  _mdfeConsNaoEncCompletedEventHandlerDisp = dispinterface;
  _mdfeConsNaoEncCompletedEventArgs = interface;
  _mdfeConsNaoEncCompletedEventArgsDisp = dispinterface;
  _MDFeRecepcao = interface;
  _MDFeRecepcaoDisp = dispinterface;
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp = dispinterface;
  _mdfeRecepcaoLoteCompletedEventHandler = interface;
  _mdfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoLoteCompletedEventArgs = interface;
  _mdfeRecepcaoLoteCompletedEventArgsDisp = dispinterface;
  _MDFeConsulta = interface;
  _MDFeConsultaDisp = dispinterface;
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp = dispinterface;
  _mdfeConsultaMDFCompletedEventHandler = interface;
  _mdfeConsultaMDFCompletedEventHandlerDisp = dispinterface;
  _mdfeConsultaMDFCompletedEventArgs = interface;
  _mdfeConsultaMDFCompletedEventArgsDisp = dispinterface;
  _MDFeDistribuicaoDFe = interface;
  _MDFeDistribuicaoDFeDisp = dispinterface;
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsg = interface;
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp = dispinterface;
  _mdfeDistDFeInteresseCompletedEventHandler = interface;
  _mdfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface;
  _mdfeDistDFeInteresseCompletedEventArgs = interface;
  _mdfeDistDFeInteresseCompletedEventArgsDisp = dispinterface;
  _MDFeStatusServico = interface;
  _MDFeStatusServicoDisp = dispinterface;
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp = dispinterface;
  _mdfeStatusServicoMDFCompletedEventHandler = interface;
  _mdfeStatusServicoMDFCompletedEventHandlerDisp = dispinterface;
  _mdfeStatusServicoMDFCompletedEventArgs = interface;
  _mdfeStatusServicoMDFCompletedEventArgsDisp = dispinterface;
  _NFeWebDownLoad = interface;
  _NFeWebDownLoadDisp = dispinterface;
  _MDFeRetRecepcao = interface;
  _MDFeRetRecepcaoDisp = dispinterface;
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp = dispinterface;
  _mdfeRetRecepcaoCompletedEventHandler = interface;
  _mdfeRetRecepcaoCompletedEventHandlerDisp = dispinterface;
  _mdfeRetRecepcaoCompletedEventArgs = interface;
  _mdfeRetRecepcaoCompletedEventArgsDisp = dispinterface;
  MDFe_Util_Interface = interface;
  MDFe_Util_InterfaceDisp = dispinterface;
  MDFe_Util_Events = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Util = MDFe_Util_Interface;
  MDFeRecepcaoEvento = _MDFeRecepcaoEvento;
  MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
  mdfeRecepcaoEventoCompletedEventHandler = _mdfeRecepcaoEventoCompletedEventHandler;
  mdfeRecepcaoEventoCompletedEventArgs = _mdfeRecepcaoEventoCompletedEventArgs;
  MDFeConsNaoEnc = _MDFeConsNaoEnc;
  MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
  mdfeConsNaoEncCompletedEventHandler = _mdfeConsNaoEncCompletedEventHandler;
  mdfeConsNaoEncCompletedEventArgs = _mdfeConsNaoEncCompletedEventArgs;
  MDFeRecepcao = _MDFeRecepcao;
  MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
  mdfeRecepcaoLoteCompletedEventHandler = _mdfeRecepcaoLoteCompletedEventHandler;
  mdfeRecepcaoLoteCompletedEventArgs = _mdfeRecepcaoLoteCompletedEventArgs;
  MDFeConsulta = _MDFeConsulta;
  MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
  mdfeConsultaMDFCompletedEventHandler = _mdfeConsultaMDFCompletedEventHandler;
  mdfeConsultaMDFCompletedEventArgs = _mdfeConsultaMDFCompletedEventArgs;
  MDFeDistribuicaoDFe = _MDFeDistribuicaoDFe;
  MDFe_Util_MDFeDistDFe_mdfeCabecMsg = _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
  mdfeDistDFeInteresseCompletedEventHandler = _mdfeDistDFeInteresseCompletedEventHandler;
  mdfeDistDFeInteresseCompletedEventArgs = _mdfeDistDFeInteresseCompletedEventArgs;
  MDFeStatusServico = _MDFeStatusServico;
  MDFe_Util_mdfeStatusServico_mdfeCabecMsg = _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
  mdfeStatusServicoMDFCompletedEventHandler = _mdfeStatusServicoMDFCompletedEventHandler;
  mdfeStatusServicoMDFCompletedEventArgs = _mdfeStatusServicoMDFCompletedEventArgs;
  NFeWebDownLoad = _NFeWebDownLoad;
  MDFeRetRecepcao = _MDFeRetRecepcao;
  MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
  mdfeRetRecepcaoCompletedEventHandler = _mdfeRetRecepcaoCompletedEventHandler;
  mdfeRetRecepcaoCompletedEventArgs = _mdfeRetRecepcaoCompletedEventArgs;


// *********************************************************************//
// Interface: _MDFeRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}
// *********************************************************************//
  _MDFeRecepcaoEvento = interface(IDispatch)
    ['{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}
// *********************************************************************//
  _MDFeRecepcaoEventoDisp = dispinterface
    ['{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5280CC24-55FB-3BBE-8C5C-1762218E2C44}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = interface(IDispatch)
    ['{5280CC24-55FB-3BBE-8C5C-1762218E2C44}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5280CC24-55FB-3BBE-8C5C-1762218E2C44}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp = dispinterface
    ['{5280CC24-55FB-3BBE-8C5C-1762218E2C44}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92D1C635-8F37-3CD5-BFCB-161188112D40}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{92D1C635-8F37-3CD5-BFCB-161188112D40}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92D1C635-8F37-3CD5-BFCB-161188112D40}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{92D1C635-8F37-3CD5-BFCB-161188112D40}']
  end;

// *********************************************************************//
// Interface: _MDFeConsNaoEnc
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92584D91-FEA6-3931-8EFA-F44363BA65BE}
// *********************************************************************//
  _MDFeConsNaoEnc = interface(IDispatch)
    ['{92584D91-FEA6-3931-8EFA-F44363BA65BE}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeConsNaoEncDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92584D91-FEA6-3931-8EFA-F44363BA65BE}
// *********************************************************************//
  _MDFeConsNaoEncDisp = dispinterface
    ['{92584D91-FEA6-3931-8EFA-F44363BA65BE}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D90EC74-8A68-31A5-A63C-61A764A4A699}
// *********************************************************************//
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = interface(IDispatch)
    ['{5D90EC74-8A68-31A5-A63C-61A764A4A699}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D90EC74-8A68-31A5-A63C-61A764A4A699}
// *********************************************************************//
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp = dispinterface
    ['{5D90EC74-8A68-31A5-A63C-61A764A4A699}']
  end;

// *********************************************************************//
// Interface: _mdfeConsNaoEncCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {46A55CD6-F5EC-340F-82D1-BF6768F6FF42}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventHandler = interface(IDispatch)
    ['{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsNaoEncCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {46A55CD6-F5EC-340F-82D1-BF6768F6FF42}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventHandlerDisp = dispinterface
    ['{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}']
  end;

// *********************************************************************//
// Interface: _mdfeConsNaoEncCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B416D19C-550A-3FBB-BCFF-20770BFB92BA}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventArgs = interface(IDispatch)
    ['{B416D19C-550A-3FBB-BCFF-20770BFB92BA}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsNaoEncCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B416D19C-550A-3FBB-BCFF-20770BFB92BA}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventArgsDisp = dispinterface
    ['{B416D19C-550A-3FBB-BCFF-20770BFB92BA}']
  end;

// *********************************************************************//
// Interface: _MDFeRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B52A01C4-3A4A-3666-BD76-2B8422F36483}
// *********************************************************************//
  _MDFeRecepcao = interface(IDispatch)
    ['{B52A01C4-3A4A-3666-BD76-2B8422F36483}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B52A01C4-3A4A-3666-BD76-2B8422F36483}
// *********************************************************************//
  _MDFeRecepcaoDisp = dispinterface
    ['{B52A01C4-3A4A-3666-BD76-2B8422F36483}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2630A142-3E16-3E90-AF7B-18FE8F44401B}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = interface(IDispatch)
    ['{2630A142-3E16-3E90-AF7B-18FE8F44401B}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2630A142-3E16-3E90-AF7B-18FE8F44401B}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp = dispinterface
    ['{2630A142-3E16-3E90-AF7B-18FE8F44401B}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {39DF352B-6BAA-34C3-9B16-09B581AD241B}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventHandler = interface(IDispatch)
    ['{39DF352B-6BAA-34C3-9B16-09B581AD241B}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {39DF352B-6BAA-34C3-9B16-09B581AD241B}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface
    ['{39DF352B-6BAA-34C3-9B16-09B581AD241B}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDC92FCB-0160-342C-B254-902050B2ECDF}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventArgs = interface(IDispatch)
    ['{BDC92FCB-0160-342C-B254-902050B2ECDF}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDC92FCB-0160-342C-B254-902050B2ECDF}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventArgsDisp = dispinterface
    ['{BDC92FCB-0160-342C-B254-902050B2ECDF}']
  end;

// *********************************************************************//
// Interface: _MDFeConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}
// *********************************************************************//
  _MDFeConsulta = interface(IDispatch)
    ['{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}
// *********************************************************************//
  _MDFeConsultaDisp = dispinterface
    ['{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}
// *********************************************************************//
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = interface(IDispatch)
    ['{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}
// *********************************************************************//
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp = dispinterface
    ['{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}']
  end;

// *********************************************************************//
// Interface: _mdfeConsultaMDFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92FBCB84-CD8B-30DA-B289-558A3F030C7F}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventHandler = interface(IDispatch)
    ['{92FBCB84-CD8B-30DA-B289-558A3F030C7F}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsultaMDFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92FBCB84-CD8B-30DA-B289-558A3F030C7F}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventHandlerDisp = dispinterface
    ['{92FBCB84-CD8B-30DA-B289-558A3F030C7F}']
  end;

// *********************************************************************//
// Interface: _mdfeConsultaMDFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9E62A4D8-CD1A-3719-B5DD-66464EA978C8}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventArgs = interface(IDispatch)
    ['{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsultaMDFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9E62A4D8-CD1A-3719-B5DD-66464EA978C8}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventArgsDisp = dispinterface
    ['{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}']
  end;

// *********************************************************************//
// Interface: _MDFeDistribuicaoDFe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FACF3646-B238-333D-A6E7-9D8F9E1BC312}
// *********************************************************************//
  _MDFeDistribuicaoDFe = interface(IDispatch)
    ['{FACF3646-B238-333D-A6E7-9D8F9E1BC312}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeDistribuicaoDFeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FACF3646-B238-333D-A6E7-9D8F9E1BC312}
// *********************************************************************//
  _MDFeDistribuicaoDFeDisp = dispinterface
    ['{FACF3646-B238-333D-A6E7-9D8F9E1BC312}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {393D3C44-2517-3083-B366-D6E8043BF94F}
// *********************************************************************//
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsg = interface(IDispatch)
    ['{393D3C44-2517-3083-B366-D6E8043BF94F}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {393D3C44-2517-3083-B366-D6E8043BF94F}
// *********************************************************************//
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp = dispinterface
    ['{393D3C44-2517-3083-B366-D6E8043BF94F}']
  end;

// *********************************************************************//
// Interface: _mdfeDistDFeInteresseCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {283B61BD-3ADA-370F-A190-FB29CD866165}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventHandler = interface(IDispatch)
    ['{283B61BD-3ADA-370F-A190-FB29CD866165}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeDistDFeInteresseCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {283B61BD-3ADA-370F-A190-FB29CD866165}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface
    ['{283B61BD-3ADA-370F-A190-FB29CD866165}']
  end;

// *********************************************************************//
// Interface: _mdfeDistDFeInteresseCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84F5E58E-5089-3612-ABFC-556C7DA130ED}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventArgs = interface(IDispatch)
    ['{84F5E58E-5089-3612-ABFC-556C7DA130ED}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeDistDFeInteresseCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84F5E58E-5089-3612-ABFC-556C7DA130ED}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventArgsDisp = dispinterface
    ['{84F5E58E-5089-3612-ABFC-556C7DA130ED}']
  end;

// *********************************************************************//
// Interface: _MDFeStatusServico
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}
// *********************************************************************//
  _MDFeStatusServico = interface(IDispatch)
    ['{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeStatusServicoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}
// *********************************************************************//
  _MDFeStatusServicoDisp = dispinterface
    ['{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FB4100DC-90E2-307D-A3DA-D715026E0711}
// *********************************************************************//
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsg = interface(IDispatch)
    ['{FB4100DC-90E2-307D-A3DA-D715026E0711}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FB4100DC-90E2-307D-A3DA-D715026E0711}
// *********************************************************************//
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp = dispinterface
    ['{FB4100DC-90E2-307D-A3DA-D715026E0711}']
  end;

// *********************************************************************//
// Interface: _mdfeStatusServicoMDFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD539C2-29D0-3E47-914F-1A77B699A2F6}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventHandler = interface(IDispatch)
    ['{BFD539C2-29D0-3E47-914F-1A77B699A2F6}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeStatusServicoMDFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD539C2-29D0-3E47-914F-1A77B699A2F6}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventHandlerDisp = dispinterface
    ['{BFD539C2-29D0-3E47-914F-1A77B699A2F6}']
  end;

// *********************************************************************//
// Interface: _mdfeStatusServicoMDFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A75DB608-B8AB-3FC4-A874-61AEDFC3A716}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventArgs = interface(IDispatch)
    ['{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeStatusServicoMDFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A75DB608-B8AB-3FC4-A874-61AEDFC3A716}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventArgsDisp = dispinterface
    ['{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}']
  end;

// *********************************************************************//
// Interface: _NFeWebDownLoad
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD1C7D3-0B72-3F88-A966-6309386C7028}
// *********************************************************************//
  _NFeWebDownLoad = interface(IDispatch)
    ['{BFD1C7D3-0B72-3F88-A966-6309386C7028}']
  end;

// *********************************************************************//
// DispIntf:  _NFeWebDownLoadDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD1C7D3-0B72-3F88-A966-6309386C7028}
// *********************************************************************//
  _NFeWebDownLoadDisp = dispinterface
    ['{BFD1C7D3-0B72-3F88-A966-6309386C7028}']
  end;

// *********************************************************************//
// Interface: _MDFeRetRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}
// *********************************************************************//
  _MDFeRetRecepcao = interface(IDispatch)
    ['{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRetRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}
// *********************************************************************//
  _MDFeRetRecepcaoDisp = dispinterface
    ['{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F2E87B32-6F12-3609-8246-7EC46C6DE449}
// *********************************************************************//
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = interface(IDispatch)
    ['{F2E87B32-6F12-3609-8246-7EC46C6DE449}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F2E87B32-6F12-3609-8246-7EC46C6DE449}
// *********************************************************************//
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp = dispinterface
    ['{F2E87B32-6F12-3609-8246-7EC46C6DE449}']
  end;

// *********************************************************************//
// Interface: _mdfeRetRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {19473EB9-D5F7-3A45-984D-0D46CA7DBF88}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRetRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {19473EB9-D5F7-3A45-984D-0D46CA7DBF88}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}']
  end;

// *********************************************************************//
// Interface: _mdfeRetRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA0DD1F0-545D-3026-A17C-295B9D482F45}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{EA0DD1F0-545D-3026-A17C-295B9D482F45}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRetRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA0DD1F0-545D-3026-A17C-295B9D482F45}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventArgsDisp = dispinterface
    ['{EA0DD1F0-545D-3026-A17C-295B9D482F45}']
  end;

// *********************************************************************//
// Interface: MDFe_Util_Interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {89A35A2C-4981-4571-BD5F-2BDEB4B5E156}
// *********************************************************************//
  MDFe_Util_Interface = interface(IDispatch)
    ['{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}']
    function Versao(out DLL_nome: WideString; out DLL_versao: WideString; out DLL_data: WideString; 
                    out DLL_dataValidade: WideString; out URL_versao: WideString; 
                    out URL_data: WideString): WideString; safecall;
    function ConsultaWS(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        out tMed: WideString; out dhRetorno: WideString; out xObs: WideString; 
                        const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function ConsultaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveMDFe: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString): Integer; safecall;
    function EnviaMDFe(const siglaWS: WideString; const nomeCertificado: WideString; 
                       const Versao: WideString; const MDFe: WideString; out msgDados: WideString; 
                       out msgRetWS: WideString; out cStat: Integer; out msgResultado: WideString; 
                       out nRec: WideString; out dhRecbto: WideString; out tMed: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; safecall;
    function BuscaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       const nroRecibo: WideString; const MDFeAssinado: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; out protocolo: WideString; 
                       out nroProtocolo: WideString; out dhProtocolo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): WideString; safecall;
    function CancelaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out resultado: Integer; out msgResultado: WideString; 
                         const chaveMDFe: WideString; const nProtocolo: WideString; 
                         const justificativa: WideString; const dhEvento: WideString; 
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out resultado: Integer; out msgResultado: WideString; 
                         const chaveMDFe: WideString; const nProtocolo: WideString; 
                         const dtEnc: WideString; const cUFEnc: WideString; 
                         const cMunEnc: WideString; const dhEvento: WideString; 
                         out nProtocoloEnc: WideString; out dProtocoloEnc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function Assinar(const XMLString: WideString; const tagAssinatura: WideString; 
                     const Atributo: WideString; const nomeCertificado: WideString; 
                     out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function ValidaXML(const XML: WideString; const XSD: WideString; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; safecall;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString; safecall;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString; safecall;
    function ConverteArquivoBase64(const NomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; safecall;
    function LeArquivoANSI(const NomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString; safecall;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; safecall;
    function CriaChaveDFe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const tpEmis: WideString; const codigoSeguranca: WideString; 
                          out msgResultado: WideString; out cDF: WideString; out cDV: WideString; 
                          out chave: WideString): Integer; safecall;
    function ide(_cUF: Integer; _tpAmb: Integer; _tpEmit: Integer; _mod: Integer; _serie: Integer; 
                 _nMDF: Integer; _cMDF: Integer; _cDV: Integer; _modal: Integer; _dhEmi: TDateTime; 
                 _tpEmis: Integer; const _procEmi: WideString; const _verProc: WideString; 
                 const _UFIni: WideString; const _UFFim: WideString; 
                 const _infMunCarrega_Grupo: WideString; const _infPercurso_Grupo_Opc: WideString): WideString; safecall;
    function infMunCarrega(const _cMunCarrega: WideString; const _xMunCarrega: WideString): WideString; safecall;
    function infPercurso(const _UFPer: WideString): WideString; safecall;
    function emit(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                  const _xFant_Opc: WideString; const _xLgr: WideString; const _nro: WideString; 
                  const _xCpl_Opc: WideString; const _xBairro: WideString; const _cMun: WideString; 
                  const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                  const _fone_Opc: WideString; const _email_Opc: WideString): WideString; safecall;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                     const _CNPJPg_Opc: WideString): WideString; safecall;
    function prop(const _RNTRC: WideString): WideString; safecall;
    function veicReboque(const _cInt_Opc: WideString; const _placa: WideString; 
                         const _tara: WideString; const _capKG: WideString; 
                         const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString): WideString; safecall;
    function veicPrincipal(const _cInt_Opc: WideString; const _placa: WideString; 
                           const _tara: WideString; const _capKG_Opc: WideString; 
                           const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                           const _condutor_Grupo: WideString): WideString; safecall;
    function condutor(const _xNome: WideString; const _CPF: WideString): WideString; safecall;
    function rodo(const _versaoModal: WideString; const _RNTRC_Opc: WideString; 
                  const _CIOT_Opc: WideString; const _veicPrincipal_Grupo: WideString; 
                  const _veicReboque_Grupo_Opc: WideString; const valePed_Grupo_Opc: WideString): WideString; safecall;
    function infNF(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString; 
                   const _serie: WideString; _dEmi: TDateTime; _vNF: Double; 
                   const _PIN_Opc: WideString): WideString; safecall;
    function infNFe(const _chNFe: WideString; const _SegCodBarra_Opc: WideString): WideString; safecall;
    function infCT(const _nCT: WideString; const _serie: WideString; const _subser_Opc: WideString; 
                   _dEmi: TDateTime; _vCarga: Double): WideString; safecall;
    function infCTe(const _chCTe: WideString; const _SegCodBarra_Opc: WideString): WideString; safecall;
    function infDoc(const _cMunDescarga: WideString; const _xMunDescarga: WideString; 
                    const _infCTe_Grupo_Opc: WideString; const _infCT_Grupo_Opc: WideString; 
                    const _infNFe_Grupo_Opc: WideString; const _infNF_Grupo_Opc: WideString): WideString; safecall;
    function tot(_qCTe: Integer; _qCT: Integer; _qNFe: Integer; _qNF: Integer; _vCarga: Double; 
                 const _cUnid: WideString; _qCarga: Double): WideString; safecall;
    function lacres(const _nLacre: WideString): WideString; safecall;
    function infAdic(const _infAdFisco_Opc: WideString; const _infCpl_Opc: WideString): WideString; safecall;
    function MDFe(const _versao: WideString; const _Id: WideString; const _ide_Grupo: WideString; 
                  const _emit_Grupo: WideString; const _infModal_Grupo: WideString; 
                  const _infDoc_Grupo: WideString; const _tot_Grupo: WideString; 
                  const _lacres_Grupo_Opc: WideString; const _infAdic_Grupo_Opc: WideString): WideString; safecall;
    function aereo(const _versaoModal: WideString; const _nac: WideString; const _matr: WideString; 
                   const _nVoo: WideString; const _cAerEmb: WideString; const _cAerDes: WideString; 
                   _dVoo: TDateTime): WideString; safecall;
    function vag(const _serie: WideString; const _nVag: WideString; const _nSeq_Opc: WideString; 
                 const _TU: WideString): WideString; safecall;
    function ferrov(const _versaoModal: WideString; const _xPref: WideString; 
                    _dhTrem_Opc: TDateTime; const _xOri: WideString; const _xDest: WideString; 
                    const _qVag: WideString; const _vag_Grupo_Opc: WideString): WideString; safecall;
    function infTermCarreg(const _cTermCarreg: WideString): WideString; safecall;
    function infTermDescarreg(const _cTermDescarreg: WideString): WideString; safecall;
    function infEmbComb(const _cEmbComb: WideString): WideString; safecall;
    function aquav(const _versaoModal: WideString; const _CNPJAgeNav: WideString; 
                   const _tpEmb: WideString; const _cEmbar: WideString; const _nViag: WideString; 
                   const _cPrtEmb: WideString; const _cPrtDest: WideString; 
                   const _infTermCarreg_Grupo_Opc: WideString; 
                   const _infTermDescarreg_Grupo_Opc: WideString; 
                   const _infEmbCom_Grupo_Opc: WideString): WideString; safecall;
    function geraLoteMDFe(const _versao: WideString; const _idLote: WideString; 
                          const _MDFe: WideString; const _NomeCertificado: WideString; 
                          out _cStat: Integer; out _msgResultado: WideString; 
                          out _MDFeAssinado: WideString): WideString; safecall;
    function DownloadNFWeb(const nomeCertificado: WideString; const chaveNFe: WideString; 
                           const CNPJ: WideString; out resultado: Integer; 
                           out msgResultado: WideString; const licenca: WideString): WideString; safecall;
    function infUnidTransp(const _tpUnidTransp: WideString; const _idUnidTransp: WideString; 
                           const _lacUnidTransp_Opc: WideString; 
                           const _infUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; safecall;
    function lacUnidTransp(const _nLacre: WideString): WideString; safecall;
    function infUnidCarga(const _tpUnidCarga: WideString; const _idUnidCarga: WideString; 
                          const _lacUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; safecall;
    function lacUnidCarga(const _nLacre: WideString): WideString; safecall;
    function infNFNovo(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString; 
                       const _serie: WideString; _dEmi: TDateTime; _vNF: Double; 
                       const _PIN_Opc: WideString; const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infNFeNovo(const _chNFe: WideString; const _SegCodBarra_Opc: WideString; 
                        const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infCTNovo(const _nCT: WideString; const _serie: WideString; 
                       const _subser_Opc: WideString; _dEmi: TDateTime; _vCarga: Double; 
                       const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infCTeNovo(const _chCTe: WideString; const _SegCodBarra_Opc: WideString; 
                        const _infUnidTransp_Opc: WideString): WideString; safecall;
    function prop_v10a(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                       const _xNome: WideString; const _IE_Opc: WideString; 
                       const _UF_Opc: WideString; _tpProp: Integer): WideString; safecall;
    function veicReboque_v10a(const _cInt_Opc: WideString; const _placa: WideString; 
                              const _tara: WideString; const _capKG: WideString; 
                              const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                              const tpCar: WideString; const UF: WideString): WideString; safecall;
    function veicPrincipal_v10a(const _cInt_Opc: WideString; const _placa: WideString; 
                                const _tara: WideString; const _capKG_Opc: WideString; 
                                const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                                const _condutor_Grupo: WideString; const tpRod: WideString; 
                                const tpCar: WideString; const UF: WideString): WideString; safecall;
    function IncCondutorMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out resultado: Integer; out msgResultado: WideString; 
                             const chaveMDFe: WideString; const CPF: WideString; 
                             const xNome: WideString; const dhEvento: WideString; nSeq: Integer; 
                             out nProtocoloInc: WideString; out dProtocoloInc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; safecall;
    function ConsMDFeNaoEnc(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out resultado: Integer; 
                            out msgResultado: WideString; const CNPJ: WideString; 
                            out cUF: WideString; out qtdeMDFe: Integer; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; safecall;
    function ide_v3(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString; 
                    mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer; 
                    modal: Integer; const dhEmi: WideString; tpEmis: Integer; 
                    const procEmi: WideString; const verProc: WideString; const UFIni: WideString; 
                    const UFFim: WideString; const infMunCarrega_Grupo: WideString; 
                    const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString): WideString; safecall;
    function aquav_v3(const versaoModal: WideString; const irin: WideString; 
                      const tpEmb: WideString; const cEmbar: WideString; const xEmbar: WideString; 
                      const nViag: WideString; const cPrtEmb: WideString; 
                      const cPrtDest: WideString; const prtTrans_Opc: WideString; 
                      const tpNav_Opc: WideString; const infTermCarreg_Grupo_Opc: WideString; 
                      const infTermDescarreg_Grupo_Opc: WideString; 
                      const infEmbCom_Grupo_Opc: WideString; 
                      const infUnidCargaVazia_Opc: WideString; 
                      const infUnidTranspVazia_Opc: WideString): WideString; safecall;
    function infTermCarreg_v3(const cTermCarreg: WideString; const xTermCarreg: WideString): WideString; safecall;
    function infTermDescarreg_v3(const cTermDescarreg: WideString; const xTermDescarreg: WideString): WideString; safecall;
    function infEmbComb_v3(const cEmbComb: WideString; const xBalsa: WideString): WideString; safecall;
    function infUnidCargaVazia(const idUnidCargaVazia: WideString; 
                               const tpUnidCargaVazia: WideString): WideString; safecall;
    function infUnidTranspVazia(const idUnidTranspVazia: WideString; 
                                const tpUnidTranspVazia: WideString): WideString; safecall;
    function ferrov_v3(const versaoModal: WideString; const xPref: WideString; 
                       const dhTrem_Opc: WideString; const xOri: WideString; 
                       const xDest: WideString; const qVag: WideString; 
                       const vag_Grupo_Opc: WideString): WideString; safecall;
    function vag_v3(const pesoBC: WideString; const pesoR: WideString; const tpVag_Opc: WideString; 
                    const serie: WideString; const nVag: WideString; const nSeq_Opc: WideString; 
                    const TU: WideString): WideString; safecall;
    function rodo_v3(const versaoModal: WideString; const infANTT_Grupo_Opc: WideString; 
                     const veicPrincipal_Grupo: WideString; 
                     const veicReboque_Grupo_Opc: WideString; const codAgPorto_Opc: WideString; 
                     const lacRodo_Grupo_Opc: WideString): WideString; safecall;
    function infANTT(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString; 
                     const valePed_Grupo_Opc: WideString; const infContratnte_Grupo_Opc: WideString): WideString; safecall;
    function infCIOT(const CIOT: WideString; const CPF: WideString; const CNPJ: WideString): WideString; safecall;
    function disp(const CNPJForn: WideString; const CNPJPg: WideString; const CPFPg: WideString; 
                  const nCompra: WideString; const vValePed: WideString): WideString; safecall;
    function infCont(const CPF: WideString; const CNPJ: WideString): WideString; safecall;
    function lacRod(const nLacre: WideString): WideString; safecall;
    function infMunDescarga(const cMunDescarga: WideString; const xMunDescarga: WideString; 
                            const infCTe_Grupo_Opc: WideString; const infNFe_Grupo_Opc: WideString; 
                            const infMDFe_Grupo_Opc: WideString): WideString; safecall;
    function infCTe_v3(const chCTe: WideString; const SegCodBarra_Opc: WideString; 
                       const indReentrega_Opc: WideString; 
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function peri(const nOnu: WideString; const xNomeAE_Opc: WideString; 
                  const xClaRisco_Opc: WideString; const grEmb_Opc: WideString; 
                  const qTotProd: WideString; const qVolTipo_Opc: WideString): WideString; safecall;
    function infNFe_v3(const chNFe: WideString; const SegCodBarra_Opc: WideString; 
                       const indReentrega_Opc: WideString; 
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function infMDFe(const chMDFe: WideString; const indReentrega_Opc: WideString; 
                     const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function seg(const respSeg: WideString; const CNPJ_respSeg_Opc: WideString; 
                 const CPF_respSeg_Opc: WideString; const infSeg_xSeg_Opc: WideString; 
                 const infSeg_CNPJ_Opc: WideString; const nApol_Opc: WideString; 
                 const nAver_Opc: WideString): WideString; safecall;
    function nAver(const nAver_Opc: WideString): WideString; safecall;
    function tot_v3(qCTe_Opc: Integer; qNFe_Opc: Integer; qMDFe_Opc: Integer; vCarga: Double; 
                    const cUnid: WideString; qCarga: Double): WideString; safecall;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; safecall;
    function MDFe_v3(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString; 
                     const emit_Grupo: WideString; const infModal_Grupo: WideString; 
                     const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString; 
                     const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString; 
                     const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  MDFe_Util_InterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {89A35A2C-4981-4571-BD5F-2BDEB4B5E156}
// *********************************************************************//
  MDFe_Util_InterfaceDisp = dispinterface
    ['{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}']
    function Versao(out DLL_nome: WideString; out DLL_versao: WideString; out DLL_data: WideString; 
                    out DLL_dataValidade: WideString; out URL_versao: WideString; 
                    out URL_data: WideString): WideString; dispid 1;
    function ConsultaWS(const siglaWS: WideString; const siglaUF: WideString; 
                        tipoAmbiente: Integer; const nomeCertificado: WideString; 
                        const Versao: WideString; out msgDados: WideString; 
                        out msgRetWS: WideString; out msgResultado: WideString; 
                        out tMed: WideString; out dhRetorno: WideString; out xObs: WideString; 
                        const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 10;
    function ConsultaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                          const nomeCertificado: WideString; const Versao: WideString; 
                          out msgDados: WideString; out msgRetWS: WideString; 
                          out msgResultado: WideString; const chaveMDFe: WideString; 
                          const proxy: WideString; const usuario: WideString; 
                          const senha: WideString): Integer; dispid 11;
    function EnviaMDFe(const siglaWS: WideString; const nomeCertificado: WideString; 
                       const Versao: WideString; const MDFe: WideString; out msgDados: WideString; 
                       out msgRetWS: WideString; out cStat: Integer; out msgResultado: WideString; 
                       out nRec: WideString; out dhRecbto: WideString; out tMed: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString; 
                       const licenca: WideString): WideString; dispid 12;
    function BuscaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                       const nomeCertificado: WideString; const Versao: WideString; 
                       const nroRecibo: WideString; const MDFeAssinado: WideString; 
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer; 
                       out msgResultado: WideString; out protocolo: WideString; 
                       out nroProtocolo: WideString; out dhProtocolo: WideString; 
                       const proxy: WideString; const usuario: WideString; const senha: WideString): WideString; dispid 13;
    function CancelaMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out resultado: Integer; out msgResultado: WideString; 
                         const chaveMDFe: WideString; const nProtocolo: WideString; 
                         const justificativa: WideString; const dhEvento: WideString; 
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; dispid 14;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                         const nomeCertificado: WideString; const Versao: WideString; 
                         out msgDados: WideString; out msgRetWS: WideString; 
                         out resultado: Integer; out msgResultado: WideString; 
                         const chaveMDFe: WideString; const nProtocolo: WideString; 
                         const dtEnc: WideString; const cUFEnc: WideString; 
                         const cMunEnc: WideString; const dhEvento: WideString; 
                         out nProtocoloEnc: WideString; out dProtocoloEnc: WideString; 
                         const proxy: WideString; const usuario: WideString; 
                         const senha: WideString; const licenca: WideString): WideString; dispid 15;
    function Assinar(const XMLString: WideString; const tagAssinatura: WideString; 
                     const Atributo: WideString; const nomeCertificado: WideString; 
                     out cResultado: Integer; out msgResultado: WideString): WideString; dispid 101;
    function ValidaXML(const XML: WideString; const XSD: WideString; out msgResultado: WideString; 
                       out qtdeErros: Integer; out erroXML: WideString): Integer; dispid 103;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString; 
                                  out Titular: WideString; out CNPJ: WideString; 
                                  out NroSerie: WideString; out Emissor: WideString; 
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 104;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer; 
                       out msgResultado: WideString): WideString; dispid 105;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer; 
                                 out msgResultado: WideString): WideString; dispid 106;
    function ConverteArquivoBase64(const NomeArquivo: WideString; out cResultado: Integer; 
                                   out msgResultado: WideString): WideString; dispid 107;
    function LeArquivoANSI(const NomeArquivo: WideString; out cResultado: Integer; 
                           out msgResultado: WideString): WideString; dispid 108;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 109;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer; 
                          out msgResultado: WideString): WideString; dispid 110;
    function CriaChaveDFe(const cUF: WideString; const Ano: WideString; const Mes: WideString; 
                          const CNPJ: WideString; const modelo: WideString; 
                          const serie: WideString; const numero: WideString; 
                          const tpEmis: WideString; const codigoSeguranca: WideString; 
                          out msgResultado: WideString; out cDF: WideString; out cDV: WideString; 
                          out chave: WideString): Integer; dispid 201;
    function ide(_cUF: Integer; _tpAmb: Integer; _tpEmit: Integer; _mod: Integer; _serie: Integer; 
                 _nMDF: Integer; _cMDF: Integer; _cDV: Integer; _modal: Integer; _dhEmi: TDateTime; 
                 _tpEmis: Integer; const _procEmi: WideString; const _verProc: WideString; 
                 const _UFIni: WideString; const _UFFim: WideString; 
                 const _infMunCarrega_Grupo: WideString; const _infPercurso_Grupo_Opc: WideString): WideString; dispid 300;
    function infMunCarrega(const _cMunCarrega: WideString; const _xMunCarrega: WideString): WideString; dispid 301;
    function infPercurso(const _UFPer: WideString): WideString; dispid 302;
    function emit(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString; 
                  const _xFant_Opc: WideString; const _xLgr: WideString; const _nro: WideString; 
                  const _xCpl_Opc: WideString; const _xBairro: WideString; const _cMun: WideString; 
                  const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString; 
                  const _fone_Opc: WideString; const _email_Opc: WideString): WideString; dispid 303;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString; 
                     const _CNPJPg_Opc: WideString): WideString; dispid 304;
    function prop(const _RNTRC: WideString): WideString; dispid 305;
    function veicReboque(const _cInt_Opc: WideString; const _placa: WideString; 
                         const _tara: WideString; const _capKG: WideString; 
                         const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString): WideString; dispid 306;
    function veicPrincipal(const _cInt_Opc: WideString; const _placa: WideString; 
                           const _tara: WideString; const _capKG_Opc: WideString; 
                           const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                           const _condutor_Grupo: WideString): WideString; dispid 307;
    function condutor(const _xNome: WideString; const _CPF: WideString): WideString; dispid 308;
    function rodo(const _versaoModal: WideString; const _RNTRC_Opc: WideString; 
                  const _CIOT_Opc: WideString; const _veicPrincipal_Grupo: WideString; 
                  const _veicReboque_Grupo_Opc: WideString; const valePed_Grupo_Opc: WideString): WideString; dispid 309;
    function infNF(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString; 
                   const _serie: WideString; _dEmi: TDateTime; _vNF: Double; 
                   const _PIN_Opc: WideString): WideString; dispid 310;
    function infNFe(const _chNFe: WideString; const _SegCodBarra_Opc: WideString): WideString; dispid 311;
    function infCT(const _nCT: WideString; const _serie: WideString; const _subser_Opc: WideString; 
                   _dEmi: TDateTime; _vCarga: Double): WideString; dispid 312;
    function infCTe(const _chCTe: WideString; const _SegCodBarra_Opc: WideString): WideString; dispid 313;
    function infDoc(const _cMunDescarga: WideString; const _xMunDescarga: WideString; 
                    const _infCTe_Grupo_Opc: WideString; const _infCT_Grupo_Opc: WideString; 
                    const _infNFe_Grupo_Opc: WideString; const _infNF_Grupo_Opc: WideString): WideString; dispid 315;
    function tot(_qCTe: Integer; _qCT: Integer; _qNFe: Integer; _qNF: Integer; _vCarga: Double; 
                 const _cUnid: WideString; _qCarga: Double): WideString; dispid 316;
    function lacres(const _nLacre: WideString): WideString; dispid 317;
    function infAdic(const _infAdFisco_Opc: WideString; const _infCpl_Opc: WideString): WideString; dispid 318;
    function MDFe(const _versao: WideString; const _Id: WideString; const _ide_Grupo: WideString; 
                  const _emit_Grupo: WideString; const _infModal_Grupo: WideString; 
                  const _infDoc_Grupo: WideString; const _tot_Grupo: WideString; 
                  const _lacres_Grupo_Opc: WideString; const _infAdic_Grupo_Opc: WideString): WideString; dispid 319;
    function aereo(const _versaoModal: WideString; const _nac: WideString; const _matr: WideString; 
                   const _nVoo: WideString; const _cAerEmb: WideString; const _cAerDes: WideString; 
                   _dVoo: TDateTime): WideString; dispid 320;
    function vag(const _serie: WideString; const _nVag: WideString; const _nSeq_Opc: WideString; 
                 const _TU: WideString): WideString; dispid 321;
    function ferrov(const _versaoModal: WideString; const _xPref: WideString; 
                    _dhTrem_Opc: TDateTime; const _xOri: WideString; const _xDest: WideString; 
                    const _qVag: WideString; const _vag_Grupo_Opc: WideString): WideString; dispid 322;
    function infTermCarreg(const _cTermCarreg: WideString): WideString; dispid 323;
    function infTermDescarreg(const _cTermDescarreg: WideString): WideString; dispid 324;
    function infEmbComb(const _cEmbComb: WideString): WideString; dispid 325;
    function aquav(const _versaoModal: WideString; const _CNPJAgeNav: WideString; 
                   const _tpEmb: WideString; const _cEmbar: WideString; const _nViag: WideString; 
                   const _cPrtEmb: WideString; const _cPrtDest: WideString; 
                   const _infTermCarreg_Grupo_Opc: WideString; 
                   const _infTermDescarreg_Grupo_Opc: WideString; 
                   const _infEmbCom_Grupo_Opc: WideString): WideString; dispid 326;
    function geraLoteMDFe(const _versao: WideString; const _idLote: WideString; 
                          const _MDFe: WideString; const _NomeCertificado: WideString; 
                          out _cStat: Integer; out _msgResultado: WideString; 
                          out _MDFeAssinado: WideString): WideString; dispid 400;
    function DownloadNFWeb(const nomeCertificado: WideString; const chaveNFe: WideString; 
                           const CNPJ: WideString; out resultado: Integer; 
                           out msgResultado: WideString; const licenca: WideString): WideString; dispid 506;
    function infUnidTransp(const _tpUnidTransp: WideString; const _idUnidTransp: WideString; 
                           const _lacUnidTransp_Opc: WideString; 
                           const _infUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; dispid 601;
    function lacUnidTransp(const _nLacre: WideString): WideString; dispid 602;
    function infUnidCarga(const _tpUnidCarga: WideString; const _idUnidCarga: WideString; 
                          const _lacUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; dispid 603;
    function lacUnidCarga(const _nLacre: WideString): WideString; dispid 604;
    function infNFNovo(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString; 
                       const _serie: WideString; _dEmi: TDateTime; _vNF: Double; 
                       const _PIN_Opc: WideString; const _infUnidTransp_Opc: WideString): WideString; dispid 605;
    function infNFeNovo(const _chNFe: WideString; const _SegCodBarra_Opc: WideString; 
                        const _infUnidTransp_Opc: WideString): WideString; dispid 606;
    function infCTNovo(const _nCT: WideString; const _serie: WideString; 
                       const _subser_Opc: WideString; _dEmi: TDateTime; _vCarga: Double; 
                       const _infUnidTransp_Opc: WideString): WideString; dispid 607;
    function infCTeNovo(const _chCTe: WideString; const _SegCodBarra_Opc: WideString; 
                        const _infUnidTransp_Opc: WideString): WideString; dispid 608;
    function prop_v10a(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString; 
                       const _xNome: WideString; const _IE_Opc: WideString; 
                       const _UF_Opc: WideString; _tpProp: Integer): WideString; dispid 609;
    function veicReboque_v10a(const _cInt_Opc: WideString; const _placa: WideString; 
                              const _tara: WideString; const _capKG: WideString; 
                              const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                              const tpCar: WideString; const UF: WideString): WideString; dispid 610;
    function veicPrincipal_v10a(const _cInt_Opc: WideString; const _placa: WideString; 
                                const _tara: WideString; const _capKG_Opc: WideString; 
                                const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString; 
                                const _condutor_Grupo: WideString; const tpRod: WideString; 
                                const tpCar: WideString; const UF: WideString): WideString; dispid 611;
    function IncCondutorMDFe(const siglaWS: WideString; tipoAmbiente: Integer; 
                             const nomeCertificado: WideString; const Versao: WideString; 
                             out msgDados: WideString; out msgRetWS: WideString; 
                             out resultado: Integer; out msgResultado: WideString; 
                             const chaveMDFe: WideString; const CPF: WideString; 
                             const xNome: WideString; const dhEvento: WideString; nSeq: Integer; 
                             out nProtocoloInc: WideString; out dProtocoloInc: WideString; 
                             const proxy: WideString; const usuario: WideString; 
                             const senha: WideString; const licenca: WideString): WideString; dispid 612;
    function ConsMDFeNaoEnc(const siglaWS: WideString; const siglaUF: WideString; 
                            tipoAmbiente: Integer; const nomeCertificado: WideString; 
                            const Versao: WideString; out msgDados: WideString; 
                            out msgRetWS: WideString; out resultado: Integer; 
                            out msgResultado: WideString; const CNPJ: WideString; 
                            out cUF: WideString; out qtdeMDFe: Integer; const proxy: WideString; 
                            const usuario: WideString; const senha: WideString; 
                            const licenca: WideString): WideString; dispid 613;
    function ide_v3(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString; 
                    mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer; 
                    modal: Integer; const dhEmi: WideString; tpEmis: Integer; 
                    const procEmi: WideString; const verProc: WideString; const UFIni: WideString; 
                    const UFFim: WideString; const infMunCarrega_Grupo: WideString; 
                    const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString): WideString; dispid 614;
    function aquav_v3(const versaoModal: WideString; const irin: WideString; 
                      const tpEmb: WideString; const cEmbar: WideString; const xEmbar: WideString; 
                      const nViag: WideString; const cPrtEmb: WideString; 
                      const cPrtDest: WideString; const prtTrans_Opc: WideString; 
                      const tpNav_Opc: WideString; const infTermCarreg_Grupo_Opc: WideString; 
                      const infTermDescarreg_Grupo_Opc: WideString; 
                      const infEmbCom_Grupo_Opc: WideString; 
                      const infUnidCargaVazia_Opc: WideString; 
                      const infUnidTranspVazia_Opc: WideString): WideString; dispid 615;
    function infTermCarreg_v3(const cTermCarreg: WideString; const xTermCarreg: WideString): WideString; dispid 616;
    function infTermDescarreg_v3(const cTermDescarreg: WideString; const xTermDescarreg: WideString): WideString; dispid 617;
    function infEmbComb_v3(const cEmbComb: WideString; const xBalsa: WideString): WideString; dispid 618;
    function infUnidCargaVazia(const idUnidCargaVazia: WideString; 
                               const tpUnidCargaVazia: WideString): WideString; dispid 619;
    function infUnidTranspVazia(const idUnidTranspVazia: WideString; 
                                const tpUnidTranspVazia: WideString): WideString; dispid 620;
    function ferrov_v3(const versaoModal: WideString; const xPref: WideString; 
                       const dhTrem_Opc: WideString; const xOri: WideString; 
                       const xDest: WideString; const qVag: WideString; 
                       const vag_Grupo_Opc: WideString): WideString; dispid 621;
    function vag_v3(const pesoBC: WideString; const pesoR: WideString; const tpVag_Opc: WideString; 
                    const serie: WideString; const nVag: WideString; const nSeq_Opc: WideString; 
                    const TU: WideString): WideString; dispid 622;
    function rodo_v3(const versaoModal: WideString; const infANTT_Grupo_Opc: WideString; 
                     const veicPrincipal_Grupo: WideString; 
                     const veicReboque_Grupo_Opc: WideString; const codAgPorto_Opc: WideString; 
                     const lacRodo_Grupo_Opc: WideString): WideString; dispid 623;
    function infANTT(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString; 
                     const valePed_Grupo_Opc: WideString; const infContratnte_Grupo_Opc: WideString): WideString; dispid 624;
    function infCIOT(const CIOT: WideString; const CPF: WideString; const CNPJ: WideString): WideString; dispid 625;
    function disp(const CNPJForn: WideString; const CNPJPg: WideString; const CPFPg: WideString; 
                  const nCompra: WideString; const vValePed: WideString): WideString; dispid 626;
    function infCont(const CPF: WideString; const CNPJ: WideString): WideString; dispid 627;
    function lacRod(const nLacre: WideString): WideString; dispid 628;
    function infMunDescarga(const cMunDescarga: WideString; const xMunDescarga: WideString; 
                            const infCTe_Grupo_Opc: WideString; const infNFe_Grupo_Opc: WideString; 
                            const infMDFe_Grupo_Opc: WideString): WideString; dispid 629;
    function infCTe_v3(const chCTe: WideString; const SegCodBarra_Opc: WideString; 
                       const indReentrega_Opc: WideString; 
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 630;
    function peri(const nOnu: WideString; const xNomeAE_Opc: WideString; 
                  const xClaRisco_Opc: WideString; const grEmb_Opc: WideString; 
                  const qTotProd: WideString; const qVolTipo_Opc: WideString): WideString; dispid 631;
    function infNFe_v3(const chNFe: WideString; const SegCodBarra_Opc: WideString; 
                       const indReentrega_Opc: WideString; 
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 632;
    function infMDFe(const chMDFe: WideString; const indReentrega_Opc: WideString; 
                     const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 633;
    function seg(const respSeg: WideString; const CNPJ_respSeg_Opc: WideString; 
                 const CPF_respSeg_Opc: WideString; const infSeg_xSeg_Opc: WideString; 
                 const infSeg_CNPJ_Opc: WideString; const nApol_Opc: WideString; 
                 const nAver_Opc: WideString): WideString; dispid 634;
    function nAver(const nAver_Opc: WideString): WideString; dispid 635;
    function tot_v3(qCTe_Opc: Integer; qNFe_Opc: Integer; qMDFe_Opc: Integer; vCarga: Double; 
                    const cUnid: WideString; qCarga: Double): WideString; dispid 636;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; dispid 637;
    function MDFe_v3(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString; 
                     const emit_Grupo: WideString; const infModal_Grupo: WideString; 
                     const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString; 
                     const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString; 
                     const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString): WideString; dispid 638;
  end;

// *********************************************************************//
// DispIntf:  MDFe_Util_Events
// Flags:     (4096) Dispatchable
// GUID:      {0A005D06-B8C1-46CA-8270-56D108D21C84}
// *********************************************************************//
  MDFe_Util_Events = dispinterface
    ['{0A005D06-B8C1-46CA-8270-56D108D21C84}']
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to          
// create instances of the default interface MDFe_Util_Interface exposed by              
// the CoClass Util. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUtil = class
    class function Create: MDFe_Util_Interface;
    class function CreateRemote(const MachineName: string): MDFe_Util_Interface;
  end;

// *********************************************************************//
// The Class CoMDFeRecepcaoEvento provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeRecepcaoEvento exposed by              
// the CoClass MDFeRecepcaoEvento. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeRecepcaoEvento = class
    class function Create: _MDFeRecepcaoEvento;
    class function CreateRemote(const MachineName: string): _MDFeRecepcaoEvento;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRecepcaoEventoCompletedEventHandler exposed by              
// the CoClass mdfeRecepcaoEventoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRecepcaoEventoCompletedEventHandler = class
    class function Create: _mdfeRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRecepcaoEventoCompletedEventArgs exposed by              
// the CoClass mdfeRecepcaoEventoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRecepcaoEventoCompletedEventArgs = class
    class function Create: _mdfeRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeConsNaoEnc provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeConsNaoEnc exposed by              
// the CoClass MDFeConsNaoEnc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeConsNaoEnc = class
    class function Create: _MDFeConsNaoEnc;
    class function CreateRemote(const MachineName: string): _MDFeConsNaoEnc;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeConsNaoEncCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeConsNaoEncCompletedEventHandler exposed by              
// the CoClass mdfeConsNaoEncCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeConsNaoEncCompletedEventHandler = class
    class function Create: _mdfeConsNaoEncCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeConsNaoEncCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeConsNaoEncCompletedEventArgs exposed by              
// the CoClass mdfeConsNaoEncCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeConsNaoEncCompletedEventArgs = class
    class function Create: _mdfeConsNaoEncCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeRecepcao exposed by              
// the CoClass MDFeRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeRecepcao = class
    class function Create: _MDFeRecepcao;
    class function CreateRemote(const MachineName: string): _MDFeRecepcao;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoLoteCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRecepcaoLoteCompletedEventHandler exposed by              
// the CoClass mdfeRecepcaoLoteCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRecepcaoLoteCompletedEventHandler = class
    class function Create: _mdfeRecepcaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoLoteCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRecepcaoLoteCompletedEventArgs exposed by              
// the CoClass mdfeRecepcaoLoteCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRecepcaoLoteCompletedEventArgs = class
    class function Create: _mdfeRecepcaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeConsulta provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeConsulta exposed by              
// the CoClass MDFeConsulta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeConsulta = class
    class function Create: _MDFeConsulta;
    class function CreateRemote(const MachineName: string): _MDFeConsulta;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeConsultaMDFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeConsultaMDFCompletedEventHandler exposed by              
// the CoClass mdfeConsultaMDFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeConsultaMDFCompletedEventHandler = class
    class function Create: _mdfeConsultaMDFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeConsultaMDFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeConsultaMDFCompletedEventArgs exposed by              
// the CoClass mdfeConsultaMDFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeConsultaMDFCompletedEventArgs = class
    class function Create: _mdfeConsultaMDFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeDistribuicaoDFe provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeDistribuicaoDFe exposed by              
// the CoClass MDFeDistribuicaoDFe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeDistribuicaoDFe = class
    class function Create: _MDFeDistribuicaoDFe;
    class function CreateRemote(const MachineName: string): _MDFeDistribuicaoDFe;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_MDFeDistDFe_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_MDFeDistDFe_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg = class
    class function Create: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeDistDFeInteresseCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeDistDFeInteresseCompletedEventHandler exposed by              
// the CoClass mdfeDistDFeInteresseCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeDistDFeInteresseCompletedEventHandler = class
    class function Create: _mdfeDistDFeInteresseCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeDistDFeInteresseCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeDistDFeInteresseCompletedEventArgs exposed by              
// the CoClass mdfeDistDFeInteresseCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeDistDFeInteresseCompletedEventArgs = class
    class function Create: _mdfeDistDFeInteresseCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeStatusServico provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeStatusServico exposed by              
// the CoClass MDFeStatusServico. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeStatusServico = class
    class function Create: _MDFeStatusServico;
    class function CreateRemote(const MachineName: string): _MDFeStatusServico;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeStatusServico_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeStatusServico_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeStatusServicoMDFCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeStatusServicoMDFCompletedEventHandler exposed by              
// the CoClass mdfeStatusServicoMDFCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeStatusServicoMDFCompletedEventHandler = class
    class function Create: _mdfeStatusServicoMDFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeStatusServicoMDFCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeStatusServicoMDFCompletedEventArgs exposed by              
// the CoClass mdfeStatusServicoMDFCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeStatusServicoMDFCompletedEventArgs = class
    class function Create: _mdfeStatusServicoMDFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoNFeWebDownLoad provides a Create and CreateRemote method to          
// create instances of the default interface _NFeWebDownLoad exposed by              
// the CoClass NFeWebDownLoad. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNFeWebDownLoad = class
    class function Create: _NFeWebDownLoad;
    class function CreateRemote(const MachineName: string): _NFeWebDownLoad;
  end;

// *********************************************************************//
// The Class CoMDFeRetRecepcao provides a Create and CreateRemote method to          
// create instances of the default interface _MDFeRetRecepcao exposed by              
// the CoClass MDFeRetRecepcao. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFeRetRecepcao = class
    class function Create: _MDFeRetRecepcao;
    class function CreateRemote(const MachineName: string): _MDFeRetRecepcao;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg provides a Create and CreateRemote method to          
// create instances of the default interface _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg exposed by              
// the CoClass MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRetRecepcaoCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRetRecepcaoCompletedEventHandler exposed by              
// the CoClass mdfeRetRecepcaoCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRetRecepcaoCompletedEventHandler = class
    class function Create: _mdfeRetRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRetRecepcaoCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _mdfeRetRecepcaoCompletedEventArgs exposed by              
// the CoClass mdfeRetRecepcaoCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  ComdfeRetRecepcaoCompletedEventArgs = class
    class function Create: _mdfeRetRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventArgs;
  end;

implementation

uses ComObj;

class function CoUtil.Create: MDFe_Util_Interface;
begin
  Result := CreateComObject(CLASS_Util) as MDFe_Util_Interface;
end;

class function CoUtil.CreateRemote(const MachineName: string): MDFe_Util_Interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as MDFe_Util_Interface;
end;

class function CoMDFeRecepcaoEvento.Create: _MDFeRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function CoMDFeRecepcaoEvento.CreateRemote(const MachineName: string): _MDFeRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg.Create: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
end;

class function ComdfeRecepcaoEventoCompletedEventHandler.Create: _mdfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoEventoCompletedEventHandler) as _mdfeRecepcaoEventoCompletedEventHandler;
end;

class function ComdfeRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoEventoCompletedEventHandler) as _mdfeRecepcaoEventoCompletedEventHandler;
end;

class function ComdfeRecepcaoEventoCompletedEventArgs.Create: _mdfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoEventoCompletedEventArgs) as _mdfeRecepcaoEventoCompletedEventArgs;
end;

class function ComdfeRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoEventoCompletedEventArgs) as _mdfeRecepcaoEventoCompletedEventArgs;
end;

class function CoMDFeConsNaoEnc.Create: _MDFeConsNaoEnc;
begin
  Result := CreateComObject(CLASS_MDFeConsNaoEnc) as _MDFeConsNaoEnc;
end;

class function CoMDFeConsNaoEnc.CreateRemote(const MachineName: string): _MDFeConsNaoEnc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeConsNaoEnc) as _MDFeConsNaoEnc;
end;

class function CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg.Create: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg) as _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg) as _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
end;

class function ComdfeConsNaoEncCompletedEventHandler.Create: _mdfeConsNaoEncCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeConsNaoEncCompletedEventHandler) as _mdfeConsNaoEncCompletedEventHandler;
end;

class function ComdfeConsNaoEncCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsNaoEncCompletedEventHandler) as _mdfeConsNaoEncCompletedEventHandler;
end;

class function ComdfeConsNaoEncCompletedEventArgs.Create: _mdfeConsNaoEncCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeConsNaoEncCompletedEventArgs) as _mdfeConsNaoEncCompletedEventArgs;
end;

class function ComdfeConsNaoEncCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsNaoEncCompletedEventArgs) as _mdfeConsNaoEncCompletedEventArgs;
end;

class function CoMDFeRecepcao.Create: _MDFeRecepcao;
begin
  Result := CreateComObject(CLASS_MDFeRecepcao) as _MDFeRecepcao;
end;

class function CoMDFeRecepcao.CreateRemote(const MachineName: string): _MDFeRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcao) as _MDFeRecepcao;
end;

class function CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg.Create: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
end;

class function ComdfeRecepcaoLoteCompletedEventHandler.Create: _mdfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoLoteCompletedEventHandler) as _mdfeRecepcaoLoteCompletedEventHandler;
end;

class function ComdfeRecepcaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoLoteCompletedEventHandler) as _mdfeRecepcaoLoteCompletedEventHandler;
end;

class function ComdfeRecepcaoLoteCompletedEventArgs.Create: _mdfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoLoteCompletedEventArgs) as _mdfeRecepcaoLoteCompletedEventArgs;
end;

class function ComdfeRecepcaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoLoteCompletedEventArgs) as _mdfeRecepcaoLoteCompletedEventArgs;
end;

class function CoMDFeConsulta.Create: _MDFeConsulta;
begin
  Result := CreateComObject(CLASS_MDFeConsulta) as _MDFeConsulta;
end;

class function CoMDFeConsulta.CreateRemote(const MachineName: string): _MDFeConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeConsulta) as _MDFeConsulta;
end;

class function CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg.Create: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg) as _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg) as _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
end;

class function ComdfeConsultaMDFCompletedEventHandler.Create: _mdfeConsultaMDFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeConsultaMDFCompletedEventHandler) as _mdfeConsultaMDFCompletedEventHandler;
end;

class function ComdfeConsultaMDFCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsultaMDFCompletedEventHandler) as _mdfeConsultaMDFCompletedEventHandler;
end;

class function ComdfeConsultaMDFCompletedEventArgs.Create: _mdfeConsultaMDFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeConsultaMDFCompletedEventArgs) as _mdfeConsultaMDFCompletedEventArgs;
end;

class function ComdfeConsultaMDFCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsultaMDFCompletedEventArgs) as _mdfeConsultaMDFCompletedEventArgs;
end;

class function CoMDFeDistribuicaoDFe.Create: _MDFeDistribuicaoDFe;
begin
  Result := CreateComObject(CLASS_MDFeDistribuicaoDFe) as _MDFeDistribuicaoDFe;
end;

class function CoMDFeDistribuicaoDFe.CreateRemote(const MachineName: string): _MDFeDistribuicaoDFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeDistribuicaoDFe) as _MDFeDistribuicaoDFe;
end;

class function CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg.Create: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg) as _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
end;

class function CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg) as _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
end;

class function ComdfeDistDFeInteresseCompletedEventHandler.Create: _mdfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeDistDFeInteresseCompletedEventHandler) as _mdfeDistDFeInteresseCompletedEventHandler;
end;

class function ComdfeDistDFeInteresseCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeDistDFeInteresseCompletedEventHandler) as _mdfeDistDFeInteresseCompletedEventHandler;
end;

class function ComdfeDistDFeInteresseCompletedEventArgs.Create: _mdfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeDistDFeInteresseCompletedEventArgs) as _mdfeDistDFeInteresseCompletedEventArgs;
end;

class function ComdfeDistDFeInteresseCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeDistDFeInteresseCompletedEventArgs) as _mdfeDistDFeInteresseCompletedEventArgs;
end;

class function CoMDFeStatusServico.Create: _MDFeStatusServico;
begin
  Result := CreateComObject(CLASS_MDFeStatusServico) as _MDFeStatusServico;
end;

class function CoMDFeStatusServico.CreateRemote(const MachineName: string): _MDFeStatusServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeStatusServico) as _MDFeStatusServico;
end;

class function CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg.Create: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg) as _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg) as _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
end;

class function ComdfeStatusServicoMDFCompletedEventHandler.Create: _mdfeStatusServicoMDFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeStatusServicoMDFCompletedEventHandler) as _mdfeStatusServicoMDFCompletedEventHandler;
end;

class function ComdfeStatusServicoMDFCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeStatusServicoMDFCompletedEventHandler) as _mdfeStatusServicoMDFCompletedEventHandler;
end;

class function ComdfeStatusServicoMDFCompletedEventArgs.Create: _mdfeStatusServicoMDFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeStatusServicoMDFCompletedEventArgs) as _mdfeStatusServicoMDFCompletedEventArgs;
end;

class function ComdfeStatusServicoMDFCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeStatusServicoMDFCompletedEventArgs) as _mdfeStatusServicoMDFCompletedEventArgs;
end;

class function CoNFeWebDownLoad.Create: _NFeWebDownLoad;
begin
  Result := CreateComObject(CLASS_NFeWebDownLoad) as _NFeWebDownLoad;
end;

class function CoNFeWebDownLoad.CreateRemote(const MachineName: string): _NFeWebDownLoad;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NFeWebDownLoad) as _NFeWebDownLoad;
end;

class function CoMDFeRetRecepcao.Create: _MDFeRetRecepcao;
begin
  Result := CreateComObject(CLASS_MDFeRetRecepcao) as _MDFeRetRecepcao;
end;

class function CoMDFeRetRecepcao.CreateRemote(const MachineName: string): _MDFeRetRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRetRecepcao) as _MDFeRetRecepcao;
end;

class function CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg.Create: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg) as _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg) as _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
end;

class function ComdfeRetRecepcaoCompletedEventHandler.Create: _mdfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRetRecepcaoCompletedEventHandler) as _mdfeRetRecepcaoCompletedEventHandler;
end;

class function ComdfeRetRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRetRecepcaoCompletedEventHandler) as _mdfeRetRecepcaoCompletedEventHandler;
end;

class function ComdfeRetRecepcaoCompletedEventArgs.Create: _mdfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRetRecepcaoCompletedEventArgs) as _mdfeRetRecepcaoCompletedEventArgs;
end;

class function ComdfeRetRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRetRecepcaoCompletedEventArgs) as _mdfeRetRecepcaoCompletedEventArgs;
end;

end.
