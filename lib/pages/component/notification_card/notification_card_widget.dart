import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notification_card_model.dart';
export 'notification_card_model.dart';

class NotificationCardWidget extends StatefulWidget {
  const NotificationCardWidget({super.key});

  @override
  State<NotificationCardWidget> createState() => _NotificationCardWidgetState();
}

class _NotificationCardWidgetState extends State<NotificationCardWidget> {
  late NotificationCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
              offset: const Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).borderColor,
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.network(
                              'https://cdn-icons-png.freepik.com/256/10785/10785653.png?semt=ais_hybrid',
                              width: 36.0,
                              height: 36.0,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/error_image.png',
                                width: 36.0,
                                height: 36.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Super Offer',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Jan. 28th, 4:30pm',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Get 60% off in our first booking',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    shape: BoxShape.circle,
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
