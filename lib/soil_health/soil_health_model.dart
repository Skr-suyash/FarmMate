import '/flutter_flow/flutter_flow_util.dart';
import 'soil_health_widget.dart' show SoilHealthWidget;
import 'package:flutter/material.dart';

class SoilHealthModel extends FlutterFlowModel<SoilHealthWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nutrientLevel widget.
  FocusNode? nutrientLevelFocusNode;
  TextEditingController? nutrientLevelTextController;
  String? Function(BuildContext, String?)? nutrientLevelTextControllerValidator;
  // State field(s) for pHLevel widget.
  FocusNode? pHLevelFocusNode;
  TextEditingController? pHLevelTextController;
  String? Function(BuildContext, String?)? pHLevelTextControllerValidator;
  // State field(s) for eCValue widget.
  FocusNode? eCValueFocusNode;
  TextEditingController? eCValueTextController;
  String? Function(BuildContext, String?)? eCValueTextControllerValidator;
  // State field(s) for dOLevel widget.
  FocusNode? dOLevelFocusNode;
  TextEditingController? dOLevelTextController;
  String? Function(BuildContext, String?)? dOLevelTextControllerValidator;
  // State field(s) for temp widget.
  FocusNode? tempFocusNode;
  TextEditingController? tempTextController;
  String? Function(BuildContext, String?)? tempTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? soilOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nutrientLevelFocusNode?.dispose();
    nutrientLevelTextController?.dispose();

    pHLevelFocusNode?.dispose();
    pHLevelTextController?.dispose();

    eCValueFocusNode?.dispose();
    eCValueTextController?.dispose();

    dOLevelFocusNode?.dispose();
    dOLevelTextController?.dispose();

    tempFocusNode?.dispose();
    tempTextController?.dispose();
  }
}
