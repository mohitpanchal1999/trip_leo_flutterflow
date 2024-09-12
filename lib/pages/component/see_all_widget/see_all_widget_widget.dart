import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'see_all_widget_model.dart';
export 'see_all_widget_model.dart';

class SeeAllWidgetWidget extends StatefulWidget {
  const SeeAllWidgetWidget({
    super.key,
    String? leftTitle,
  }) : leftTitle = leftTitle ?? 'Recent Destinations';

  final String leftTitle;

  @override
  State<SeeAllWidgetWidget> createState() => _SeeAllWidgetWidgetState();
}

class _SeeAllWidgetWidgetState extends State<SeeAllWidgetWidget> {
  late SeeAllWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeeAllWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.leftTitle,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(
              'searchResultScreen',
              queryParameters: {
                'appBarTitle': serializeParam(
                  '',
                  ParamType.String,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          },
          child: Text(
            'View All',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
