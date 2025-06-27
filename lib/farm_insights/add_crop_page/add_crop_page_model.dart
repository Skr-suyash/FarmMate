import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_crop_page_widget.dart' show AddCropPageWidget;
import 'package:flutter/material.dart';

class AddCropPageModel extends FlutterFlowModel<AddCropPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cropName widget.
  FocusNode? cropNameFocusNode;
  TextEditingController? cropNameTextController;
  String? Function(BuildContext, String?)? cropNameTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cropNameFocusNode?.dispose();
    cropNameTextController?.dispose();
  }
}
