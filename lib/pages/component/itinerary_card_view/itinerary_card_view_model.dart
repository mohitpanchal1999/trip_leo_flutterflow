import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/top_itinerary_row_widget/top_itinerary_row_widget_widget.dart';
import 'itinerary_card_view_widget.dart' show ItineraryCardViewWidget;
import 'package:flutter/material.dart';

class ItineraryCardViewModel extends FlutterFlowModel<ItineraryCardViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for top_itinerary_row_widget component.
  late TopItineraryRowWidgetModel topItineraryRowWidgetModel;

  @override
  void initState(BuildContext context) {
    topItineraryRowWidgetModel =
        createModel(context, () => TopItineraryRowWidgetModel());
  }

  @override
  void dispose() {
    topItineraryRowWidgetModel.dispose();
  }
}
