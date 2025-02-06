import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/itinerary_card_view/itinerary_card_view_widget.dart';
import 'package:flutter/material.dart';
import 'itineraries_screen_model.dart';
export 'itineraries_screen_model.dart';

class ItinerariesScreenWidget extends StatefulWidget {
  const ItinerariesScreenWidget({super.key});

  @override
  State<ItinerariesScreenWidget> createState() =>
      _ItinerariesScreenWidgetState();
}

class _ItinerariesScreenWidgetState extends State<ItinerariesScreenWidget> {
  late ItinerariesScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItinerariesScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).appBgColor,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: wrapWithModel(
                      model: _model.commonAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CommonAppBarWidget(
                        showBackArrow: false,
                        appBarTitle: 'San Diego, California',
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 10.0, 80.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.itineraryCardViewModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItineraryCardViewWidget(),
                            ),
                            wrapWithModel(
                              model: _model.itineraryCardViewModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItineraryCardViewWidget(),
                            ),
                            wrapWithModel(
                              model: _model.itineraryCardViewModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const ItineraryCardViewWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const BottomNavigationBarWidget(
                    selectedPageIndex: 4,
                    hidden: false,
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
