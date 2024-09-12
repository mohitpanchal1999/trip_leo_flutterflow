import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar_fixed_title/common_app_bar_fixed_title_widget.dart';
import '/pages/component/notification_card/notification_card_widget.dart';
import 'notification_screen_widget.dart' show NotificationScreenWidget;
import 'package:flutter/material.dart';

class NotificationScreenModel
    extends FlutterFlowModel<NotificationScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar_fixed_title component.
  late CommonAppBarFixedTitleModel commonAppBarFixedTitleModel;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel1;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel2;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel3;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel4;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel5;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel6;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel7;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel8;
  // Model for notification_card component.
  late NotificationCardModel notificationCardModel9;

  @override
  void initState(BuildContext context) {
    commonAppBarFixedTitleModel =
        createModel(context, () => CommonAppBarFixedTitleModel());
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel4 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel5 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel6 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel7 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel8 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel9 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    commonAppBarFixedTitleModel.dispose();
    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
    notificationCardModel4.dispose();
    notificationCardModel5.dispose();
    notificationCardModel6.dispose();
    notificationCardModel7.dispose();
    notificationCardModel8.dispose();
    notificationCardModel9.dispose();
  }
}
