import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_itinerary_row_widget_copy_model.dart';
export 'top_itinerary_row_widget_copy_model.dart';

class TopItineraryRowWidgetCopyWidget extends StatefulWidget {
  const TopItineraryRowWidgetCopyWidget({super.key});

  @override
  State<TopItineraryRowWidgetCopyWidget> createState() =>
      _TopItineraryRowWidgetCopyWidgetState();
}

class _TopItineraryRowWidgetCopyWidgetState
    extends State<TopItineraryRowWidgetCopyWidget> {
  late TopItineraryRowWidgetCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopItineraryRowWidgetCopyModel());
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 30.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Text(
                'Family',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color(0xFF00B2D9),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Beach',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color(0xFF7BB037),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  '20 Days',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color(0xFFFF7A00),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Family',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
