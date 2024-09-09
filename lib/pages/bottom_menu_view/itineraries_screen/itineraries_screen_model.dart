import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/itinerary_card_view/itinerary_card_view_widget.dart';
import 'itineraries_screen_widget.dart' show ItinerariesScreenWidget;
import 'package:flutter/material.dart';

class ItinerariesScreenModel extends FlutterFlowModel<ItinerariesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel1;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel2;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel3;
  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    itineraryCardViewModel1 =
        createModel(context, () => ItineraryCardViewModel());
    itineraryCardViewModel2 =
        createModel(context, () => ItineraryCardViewModel());
    itineraryCardViewModel3 =
        createModel(context, () => ItineraryCardViewModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    itineraryCardViewModel1.dispose();
    itineraryCardViewModel2.dispose();
    itineraryCardViewModel3.dispose();
    bottomNavigationBarModel.dispose();
  }
}
