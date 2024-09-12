import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar_fixed_title/common_app_bar_fixed_title_widget.dart';
import 'privacy_policy_screen_widget.dart' show PrivacyPolicyScreenWidget;
import 'package:flutter/material.dart';

class PrivacyPolicyScreenModel
    extends FlutterFlowModel<PrivacyPolicyScreenWidget> {
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
