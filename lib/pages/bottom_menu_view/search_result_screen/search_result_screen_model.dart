import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import 'search_result_screen_widget.dart' show SearchResultScreenWidget;
import 'package:flutter/material.dart';

class SearchResultScreenModel
    extends FlutterFlowModel<SearchResultScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
  }
}
