import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/component/common_app_bar_fixed_title/common_app_bar_fixed_title_widget.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_screen_model.dart';
export 'privacy_policy_screen_model.dart';

class PrivacyPolicyScreenWidget extends StatefulWidget {
  const PrivacyPolicyScreenWidget({super.key});

  @override
  State<PrivacyPolicyScreenWidget> createState() =>
      _PrivacyPolicyScreenWidgetState();
}

class _PrivacyPolicyScreenWidgetState extends State<PrivacyPolicyScreenWidget> {
  late PrivacyPolicyScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyScreenModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                child: wrapWithModel(
                  model: _model.commonAppBarFixedTitleModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CommonAppBarFixedTitleWidget(
                    appBarTitle: 'Privacy Policy',
                    isHideProfile: false,
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
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
                    child: const FlutterFlowWebView(
                      content:
                          'https://www.termsfeed.com/live/85c2963e-3755-4257-a67a-e9171e4d7de0',
                      bypass: false,
                      height: 500.0,
                      verticalScroll: false,
                      horizontalScroll: false,
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
