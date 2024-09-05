import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/search_card_view/search_card_view_widget.dart';
import '/pages/component/top_divider_row/top_divider_row_widget.dart';
import 'travel_detail_screen_copy_widget.dart'
    show TravelDetailScreenCopyWidget;
import 'package:flutter/material.dart';

class TravelDetailScreenCopyModel
    extends FlutterFlowModel<TravelDetailScreenCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for top_divider_row component.
  late TopDividerRowModel topDividerRowModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for search_card_view component.
  late SearchCardViewModel searchCardViewModel;

  @override
  void initState(BuildContext context) {
    topDividerRowModel = createModel(context, () => TopDividerRowModel());
    searchCardViewModel = createModel(context, () => SearchCardViewModel());
  }

  @override
  void dispose() {
    topDividerRowModel.dispose();
    searchCardViewModel.dispose();
  }
}
