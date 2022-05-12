import '../devolucao_equipamento/devolucao_equipamento_widget.dart';
import '../editar_usuario/editar_usuario_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../solicitacao_equipamento/solicitacao_equipamento_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioUsuarioWidget extends StatefulWidget {
  const InicioUsuarioWidget({Key key}) : super(key: key);

  @override
  _InicioUsuarioWidgetState createState() => _InicioUsuarioWidgetState();
}

class _InicioUsuarioWidgetState extends State<InicioUsuarioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFF042D6A),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    height: MediaQuery.of(context).size.width *
                                        0.05,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Text(
                                      'Nome usuário',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF042D6A),
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: EditarUsuarioWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Editar conta',
                                      options: FFButtonOptions(
                                        width: 150,
                                        height: 35,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 8,
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Desconectado'),
                                            content:
                                                Text('Você foi desconectado.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: LoginWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Sair',
                                    options: FFButtonOptions(
                                      width: 75,
                                      height: 40,
                                      color: Color(0x00042D6A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF042D6A),
                                            fontSize: 18,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child:
                                                SolicitacaoEquipamentoWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Solicitação de Equipamento',
                                      options: FFButtonOptions(
                                        width: 400,
                                        height: 60,
                                        color: Color(0xFF438AF4),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: DevolucaoEquipamentoWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Devolução de Equipamento',
                                      options: FFButtonOptions(
                                        width: 400,
                                        height: 60,
                                        color: Color(0xFF438AF4),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Acesso ao Mapa',
                                      options: FFButtonOptions(
                                        width: 400,
                                        height: 60,
                                        color: Color(0xFF438AF4),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
