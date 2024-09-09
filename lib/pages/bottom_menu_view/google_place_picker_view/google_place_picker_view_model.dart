import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import 'google_place_picker_view_widget.dart' show GooglePlacePickerViewWidget;
import 'package:flutter/material.dart';

class GooglePlacePickerViewModel
    extends FlutterFlowModel<GooglePlacePickerViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for common_app_bar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
  }
}
