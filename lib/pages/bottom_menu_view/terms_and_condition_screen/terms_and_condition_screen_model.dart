import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar_fixed_title/common_app_bar_fixed_title_widget.dart';
import 'terms_and_condition_screen_widget.dart'
    show TermsAndConditionScreenWidget;
import 'package:flutter/material.dart';

class TermsAndConditionScreenModel
    extends FlutterFlowModel<TermsAndConditionScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar_fixed_title component.
  late CommonAppBarFixedTitleModel commonAppBarFixedTitleModel;

  @override
  void initState(BuildContext context) {
    commonAppBarFixedTitleModel =
        createModel(context, () => CommonAppBarFixedTitleModel());
  }

  @override
  void dispose() {
    commonAppBarFixedTitleModel.dispose();
  }
}
