import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/search_card_view/search_card_view_widget.dart';
import 'search_result_screen_widget.dart' show SearchResultScreenWidget;
import 'package:flutter/material.dart';

class SearchResultScreenModel
    extends FlutterFlowModel<SearchResultScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
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
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    searchCardViewModel1.dispose();
    searchCardViewModel2.dispose();
    searchCardViewModel3.dispose();
    searchCardViewModel4.dispose();
    searchCardViewModel5.dispose();
    searchCardViewModel6.dispose();
    searchCardViewModel7.dispose();
    searchCardViewModel8.dispose();
  }
}
