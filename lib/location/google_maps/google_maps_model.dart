import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'google_maps_widget.dart' show GoogleMapsWidget;
import 'package:flutter/material.dart';

class GoogleMapsModel extends FlutterFlowModel<GoogleMapsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for placeField widget.
  FocusNode? placeFieldFocusNode;
  TextEditingController? placeFieldTextController;
  String? Function(BuildContext, String?)? placeFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (getNearbyLocation)] action in IconButton widget.
  ApiCallResponse? apiResultpa9;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    placeFieldFocusNode?.dispose();
    placeFieldTextController?.dispose();
  }
}
