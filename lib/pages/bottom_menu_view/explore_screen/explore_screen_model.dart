import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/see_all_widget/see_all_widget_widget.dart';
import 'explore_screen_widget.dart' show ExploreScreenWidget;
import 'package:flutter/material.dart';

class ExploreScreenModel extends FlutterFlowModel<ExploreScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for see_all_widget component.
  late SeeAllWidgetModel seeAllWidgetModel1;
  // Model for see_all_widget component.
  late SeeAllWidgetModel seeAllWidgetModel2;
  // Model for see_all_widget component.
  late SeeAllWidgetModel seeAllWidgetModel3;
  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    seeAllWidgetModel1 = createModel(context, () => SeeAllWidgetModel());
    seeAllWidgetModel2 = createModel(context, () => SeeAllWidgetModel());
    seeAllWidgetModel3 = createModel(context, () => SeeAllWidgetModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    seeAllWidgetModel1.dispose();
    seeAllWidgetModel2.dispose();
    seeAllWidgetModel3.dispose();
    bottomNavigationBarModel.dispose();
  }
}
