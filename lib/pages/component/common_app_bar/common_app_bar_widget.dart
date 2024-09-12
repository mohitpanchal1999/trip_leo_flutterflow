import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common_app_bar_model.dart';
export 'common_app_bar_model.dart';

class CommonAppBarWidget extends StatefulWidget {
  const CommonAppBarWidget({
    super.key,
    bool? showBackArrow,
    required this.appBarTitle,
    bool? isHideProfile,
    bool? isDisableAction,
  })  : showBackArrow = showBackArrow ?? false,
        isHideProfile = isHideProfile ?? true,
        isDisableAction = isDisableAction ?? false;

  final bool showBackArrow;
  final String? appBarTitle;
  final bool isHideProfile;
  final bool isDisableAction;

  @override
  State<CommonAppBarWidget> createState() => _CommonAppBarWidgetState();
}

class _CommonAppBarWidgetState extends State<CommonAppBarWidget> {
  late CommonAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.showBackArrow)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              Icon(
                Icons.location_on_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (widget.isDisableAction) {
                      return;
                    }

                    context.pushNamed(
                      'google_place_picker_view',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                        ),
                      },
                    );

                    return;
                  },
                  child: Text(
                    valueOrDefault<String>(
                      FFAppState().defaultAddress,
                      'San Diego, California',
                    ),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Sora',
                          fontSize: FFAppState().defaultAddress == ''
                              ? 18.0
                              : 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.notifications_none,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'notification_screen',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                        ),
                      },
                    );
                  },
                ),
              ),
              if (widget.isHideProfile)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'profile_screen',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                        ),
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.cover,
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
