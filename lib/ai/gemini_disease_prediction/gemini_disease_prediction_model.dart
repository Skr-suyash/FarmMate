import '/flutter_flow/flutter_flow_util.dart';
import 'gemini_disease_prediction_widget.dart'
    show GeminiDiseasePredictionWidget;
import 'package:flutter/material.dart';

class GeminiDiseasePredictionModel
    extends FlutterFlowModel<GeminiDiseasePredictionWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataXt7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataXt7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? diseasePredict;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
