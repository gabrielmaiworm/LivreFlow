import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroMasterWidget extends StatefulWidget {
  const CadastroMasterWidget({Key key}) : super(key: key);

  @override
  _CadastroMasterWidgetState createState() => _CadastroMasterWidgetState();
}

class _CadastroMasterWidgetState extends State<CadastroMasterWidget> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController campoConfirmSenhaparceiroController;
  bool campoConfirmSenhaparceiroVisibility;
  TextEditingController campoEmailController;
  TextEditingController campoSenhaParceiroController;
  bool campoSenhaParceiroVisibility;

  @override
  void initState() {
    super.initState();
    campoConfirmSenhaparceiroController = TextEditingController();
    campoConfirmSenhaparceiroVisibility = false;
    campoEmailController = TextEditingController();
    campoSenhaParceiroController = TextEditingController();
    campoSenhaParceiroVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                          text: '',
                                          icon: Icon(
                                            Icons.chevron_left,
                                            size: 35,
                                          ),
                                          options: FFButtonOptions(
                                            width: 60,
                                            height: 60,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 100,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Text(
                                          'Cadastro do Master',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF030335),
                                                fontSize: 28,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 50, 20, 0),
                                        child: TextFormField(
                                          controller: campoEmailController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'campoEmailController',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email',
                                            hintText: '  ',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF04044E),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF04044E),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .lineColor,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF0F0F0F),
                                                fontSize: 16,
                                              ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Informe um email válido';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 20, 0),
                                          child: TextFormField(
                                            controller:
                                                campoSenhaParceiroController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'campoSenhaParceiroController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText:
                                                !campoSenhaParceiroVisibility,
                                            decoration: InputDecoration(
                                              labelText: '  Senha',
                                              hintText: 'Senha',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF04044E),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF04044E),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => campoSenhaParceiroVisibility =
                                                      !campoSenhaParceiroVisibility,
                                                ),
                                                child: Icon(
                                                  campoSenhaParceiroVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F0F0F),
                                                  fontSize: 16,
                                                ),
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'A senha é obrigatória';
                                              }
                                              if (val.length < 6) {
                                                return 'A senha deve ter no mínimo 6 caracteres';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 20, 0),
                                          child: TextFormField(
                                            controller:
                                                campoConfirmSenhaparceiroController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'campoConfirmSenhaparceiroController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText:
                                                !campoConfirmSenhaparceiroVisibility,
                                            decoration: InputDecoration(
                                              labelText: '  Confirmar Senha',
                                              hintText: ' Confirmar Senha',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF04044E),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF04044E),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => campoConfirmSenhaparceiroVisibility =
                                                      !campoConfirmSenhaparceiroVisibility,
                                                ),
                                                child: Icon(
                                                  campoConfirmSenhaparceiroVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F0F0F),
                                                  fontSize: 16,
                                                ),
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'É necessário confirmar sua senha';
                                              }
                                              if (val.length < 6) {
                                                return 'A confirmação da senha deve ter no mínimo 6 caracteres';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 60, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 20, 20),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (formKey.currentState == null ||
                                                !formKey.currentState
                                                    .validate()) {
                                              return;
                                            }

                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Cadastro'),
                                                  content: Text(
                                                      'Master cadastrado com sucesso!'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            Navigator.pop(context);
                                          },
                                          text: 'Cadastrar Master',
                                          options: FFButtonOptions(
                                            width: 280,
                                            height: 55,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
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
                      ],
                    ),
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
