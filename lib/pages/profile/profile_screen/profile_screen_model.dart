import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/itinerary_card_view/itinerary_card_view_widget.dart';
import '/pages/component/search_card_view/search_card_view_widget.dart';
import 'profile_screen_widget.dart' show ProfileScreenWidget;
import 'package:flutter/material.dart';

class ProfileScreenModel extends FlutterFlowModel<ProfileScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel1;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel2;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel3;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel4;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel5;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel6;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel7;
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel8;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel1;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel2;
  // Model for itinerary_card_view component.
  late ItineraryCardViewModel itineraryCardViewModel3;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    searchCardViewModel1 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel2 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel3 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel4 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel5 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel6 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel7 = createModel(context, () => SearchCardViewModel());
    searchCardViewModel8 = createModel(context, () => SearchCardViewModel());
    itineraryCardViewModel1 =
        createModel(context, () => ItineraryCardViewModel());
    itineraryCardViewModel2 =
        createModel(context, () => ItineraryCardViewModel());
    itineraryCardViewModel3 =
        createModel(context, () => ItineraryCardViewModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    tabBarController?.dispose();
    searchCardViewModel1.dispose();
    searchCardViewModel2.dispose();
    searchCardViewModel3.dispose();
    searchCardViewModel4.dispose();
    searchCardViewModel5.dispose();
    searchCardViewModel6.dispose();
    searchCardViewModel7.dispose();
    searchCardViewModel8.dispose();
    itineraryCardViewModel1.dispose();
    itineraryCardViewModel2.dispose();
    itineraryCardViewModel3.dispose();
  }
}
