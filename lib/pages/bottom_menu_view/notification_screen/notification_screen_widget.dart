import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar_fixed_title/common_app_bar_fixed_title_widget.dart';
import '/pages/component/notification_card/notification_card_widget.dart';
import 'package:flutter/material.dart';
import 'notification_screen_model.dart';
export 'notification_screen_model.dart';

class NotificationScreenWidget extends StatefulWidget {
  const NotificationScreenWidget({super.key});

  @override
  State<NotificationScreenWidget> createState() =>
      _NotificationScreenWidgetState();
}

class _NotificationScreenWidgetState extends State<NotificationScreenWidget> {
  late NotificationScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).appBgColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 12.0),
                child: wrapWithModel(
                  model: _model.commonAppBarFixedTitleModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CommonAppBarFixedTitleWidget(
                    appBarTitle: 'Notification',
                    isHideProfile: true,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).borderColor,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 10.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.notificationCardModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: const NotificationCardWidget(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
