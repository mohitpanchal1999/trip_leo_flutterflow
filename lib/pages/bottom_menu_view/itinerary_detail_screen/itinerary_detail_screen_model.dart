import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/itinear_deatil_row/itinear_deatil_row_widget.dart';
import '/pages/component/top_itinerary_row_widget/top_itinerary_row_widget_widget.dart';
import 'itinerary_detail_screen_widget.dart' show ItineraryDetailScreenWidget;
import 'package:flutter/material.dart';

class ItineraryDetailScreenModel
    extends FlutterFlowModel<ItineraryDetailScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for top_itinerary_row_widget component.
  late TopItineraryRowWidgetModel topItineraryRowWidgetModel;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel1;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel2;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel3;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel4;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel5;
  // Model for itinear_deatil_row component.
  late ItinearDeatilRowModel itinearDeatilRowModel6;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    topItineraryRowWidgetModel =
        createModel(context, () => TopItineraryRowWidgetModel());
    itinearDeatilRowModel1 =
        createModel(context, () => ItinearDeatilRowModel());
    itinearDeatilRowModel2 =
        createModel(context, () => ItinearDeatilRowModel());
    itinearDeatilRowModel3 =
        createModel(context, () => ItinearDeatilRowModel());
    itinearDeatilRowModel4 =
        createModel(context, () => ItinearDeatilRowModel());
    itinearDeatilRowModel5 =
        createModel(context, () => ItinearDeatilRowModel());
    itinearDeatilRowModel6 =
        createModel(context, () => ItinearDeatilRowModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    topItineraryRowWidgetModel.dispose();
    itinearDeatilRowModel1.dispose();
    itinearDeatilRowModel2.dispose();
    itinearDeatilRowModel3.dispose();
    itinearDeatilRowModel4.dispose();
    itinearDeatilRowModel5.dispose();
    itinearDeatilRowModel6.dispose();
  }
}
