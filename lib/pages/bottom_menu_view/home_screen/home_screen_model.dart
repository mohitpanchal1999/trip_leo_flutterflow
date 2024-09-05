import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/explore_card_view/explore_card_view_widget.dart';
import '/pages/component/see_all_widget/see_all_widget_widget.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for see_all_widget component.
  late SeeAllWidgetModel seeAllWidgetModel1;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel1;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel2;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel3;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel4;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  String? get choiceChipsValue4 =>
      choiceChipsValueController4?.value?.firstOrNull;
  set choiceChipsValue4(String? val) =>
      choiceChipsValueController4?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for see_all_widget component.
  late SeeAllWidgetModel seeAllWidgetModel2;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel6;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel7;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel8;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel9;
  // Model for explore_card_view component.
  late ExploreCardViewModel exploreCardViewModel10;
  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    seeAllWidgetModel1 = createModel(context, () => SeeAllWidgetModel());
    exploreCardViewModel1 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel2 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel3 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel4 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel5 = createModel(context, () => ExploreCardViewModel());
    seeAllWidgetModel2 = createModel(context, () => SeeAllWidgetModel());
    exploreCardViewModel6 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel7 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel8 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel9 = createModel(context, () => ExploreCardViewModel());
    exploreCardViewModel10 = createModel(context, () => ExploreCardViewModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    tabBarController?.dispose();
    seeAllWidgetModel1.dispose();
    exploreCardViewModel1.dispose();
    exploreCardViewModel2.dispose();
    exploreCardViewModel3.dispose();
    exploreCardViewModel4.dispose();
    exploreCardViewModel5.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    seeAllWidgetModel2.dispose();
    exploreCardViewModel6.dispose();
    exploreCardViewModel7.dispose();
    exploreCardViewModel8.dispose();
    exploreCardViewModel9.dispose();
    exploreCardViewModel10.dispose();
    bottomNavigationBarModel.dispose();
  }
}
