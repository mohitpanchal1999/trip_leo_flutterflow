import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailaddress1 widget.
  FocusNode? emailaddress1FocusNode;
  TextEditingController? emailaddress1TextController;
  String? Function(BuildContext, String?)? emailaddress1TextControllerValidator;
  String? _emailaddress1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please  fill correct email';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailaddress1TextControllerValidator =
        _emailaddress1TextControllerValidator;
  }

  @override
  void dispose() {
    emailaddress1FocusNode?.dispose();
    emailaddress1TextController?.dispose();
  }
}
