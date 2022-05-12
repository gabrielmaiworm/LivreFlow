import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DevolucaoEquipamentoWidget extends StatefulWidget {
  const DevolucaoEquipamentoWidget({Key key}) : super(key: key);

  @override
  _DevolucaoEquipamentoWidgetState createState() =>
      _DevolucaoEquipamentoWidgetState();
}

class _DevolucaoEquipamentoWidgetState
    extends State<DevolucaoEquipamentoWidget> {
  String radioButtonValue1;
  String radioButtonValue2;
  String radioButtonValue3;
  String radioButtonValue4;
  String uploadedFileUrl = '';
  TextEditingController numSolicitacaoController;
  TextEditingController campoTempoUtilizacaoController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    campoTempoUtilizacaoController = TextEditingController();
    numSolicitacaoController = TextEditingController();
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
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
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
                                        size: 25,
                                      ),
                                      options: FFButtonOptions(
                                        width: 50,
                                        height: 50,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                        elevation: 2,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Text(
                                      'Devolução do Equipamento',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    final downloadUrls = (await Future.wait(
                                            selectedMedia.map((m) async =>
                                                await uploadData(
                                                    m.storagePath, m.bytes))))
                                        .where((u) => u != null)
                                        .toList();
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrls != null &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() =>
                                          uploadedFileUrl = downloadUrls.first);
                                      showUploadMessage(
                                        context,
                                        'Success!',
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        'Failed to upload media',
                                      );
                                      return;
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 10, 20),
                                      child: Icon(
                                        Icons.image_rounded,
                                        color: Color(0xFF0F0F0F),
                                        size: 36,
                                      ),
                                    ),
                                    Text(
                                      'Anexar imagem do equipamento',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: numSolicitacaoController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'numSolicitacaoController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: '     Número da Solicitação',
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
                                        fillColor: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0F0F0F),
                                            fontSize: 16,
                                          ),
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Informe o número da solicitação';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 0, 0),
                                  child: Text(
                                    'Características',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 24,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options:
                                            ['Opção 1', 'Opção 2'].toList(),
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue1 = value);
                                        },
                                        optionHeight: 30,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 150, 0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor: Colors.blue,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.center,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options:
                                            ['Opção 3', 'Opção 4'].toList(),
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue2 = value);
                                        },
                                        optionHeight: 30,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 150, 0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor: Colors.blue,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options:
                                            ['Opção 5', 'Opção 6'].toList(),
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue3 = value);
                                        },
                                        optionHeight: 30,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 150, 0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor: Colors.blue,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options:
                                            ['Opção 7', 'Opção 8'].toList(),
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue4 = value);
                                        },
                                        optionHeight: 30,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 150, 0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor: Colors.blue,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Text(
                                      'Tempo de Utilização:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 5, 20, 5),
                                      child: TextFormField(
                                        controller:
                                            campoTempoUtilizacaoController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'campoTempoUtilizacaoController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: '   Tempo em Horas',
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
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F0F0F),
                                              fontSize: 16,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Informe o tempo de utilização';
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (formKey.currentState == null ||
                                            !formKey.currentState.validate()) {
                                          return;
                                        }

                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Devolução'),
                                              content: Text(
                                                  'Equipamento devolvido com sucesso!'),
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
                                      text: 'Confirmar Devolução',
                                      options: FFButtonOptions(
                                        width: 280,
                                        height: 55,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
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
