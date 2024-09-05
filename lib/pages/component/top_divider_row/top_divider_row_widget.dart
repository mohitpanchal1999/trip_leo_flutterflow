import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'top_divider_row_model.dart';
export 'top_divider_row_model.dart';

class TopDividerRowWidget extends StatefulWidget {
  const TopDividerRowWidget({super.key});

  @override
  State<TopDividerRowWidget> createState() => _TopDividerRowWidgetState();
}

class _TopDividerRowWidgetState extends State<TopDividerRowWidget> {
  late TopDividerRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopDividerRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 160.0,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset(
                      'assets/images/date_icon.svg',
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'May is best Month to',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).textGrey,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: StyledVerticalDivider(
                width: 0.0,
                thickness: 0.4,
                color: FlutterFlowTheme.of(context).textGrey,
                lineStyle: DividerLineStyle.dashed,
              ),
            ),
            Container(
              width: 160.0,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/car_icon.svg',
                    width: 40.0,
                    height: 15.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Right Side drive',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).textGrey,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        StyledDivider(
          height: 1.0,
          thickness: 0.4,
          color: FlutterFlowTheme.of(context).textGrey,
          lineStyle: DividerLineStyle.dashed,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 160.0,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrIJbX-6MVfN4u1_xWs8A7eADfLg1lU9k7oA&s',
                        width: 22.0,
                        height: 22.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Agra, India',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).textGrey,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: StyledVerticalDivider(
                width: 0.0,
                thickness: 0.4,
                color: FlutterFlowTheme.of(context).textGrey,
                lineStyle: DividerLineStyle.dashed,
              ),
            ),
            Container(
              width: 160.0,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/images/language_icon.svg',
                    width: 22.0,
                    height: 22.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Hindi, Gujrati',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).textGrey,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        StyledDivider(
          height: 1.0,
          thickness: 0.4,
          color: FlutterFlowTheme.of(context).textGrey,
          lineStyle: DividerLineStyle.dashed,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 0.0, 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SvgPicture.asset(
                        'assets/images/time_zone_icon.svg',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Time zone in India (GMT+5:30)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).textGrey,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
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
        StyledDivider(
          height: 1.0,
          thickness: 0.4,
          color: FlutterFlowTheme.of(context).textGrey,
          lineStyle: DividerLineStyle.dashed,
        ),
      ],
    );
  }
}
