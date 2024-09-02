import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'itineraries_screen_widget.dart' show ItinerariesScreenWidget;
import 'package:flutter/material.dart';

class ItinerariesScreenModel extends FlutterFlowModel<ItinerariesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    bottomNavigationBarModel.dispose();
  }
}
