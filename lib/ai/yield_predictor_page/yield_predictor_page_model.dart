import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'yield_predictor_page_widget.dart' show YieldPredictorPageWidget;
import 'package:flutter/material.dart';

class YieldPredictorPageModel
    extends FlutterFlowModel<YieldPredictorPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fieldArea widget.
  FocusNode? fieldAreaFocusNode;
  TextEditingController? fieldAreaTextController;
  String? Function(BuildContext, String?)? fieldAreaTextControllerValidator;
  // State field(s) for cropType widget.
  FocusNode? cropTypeFocusNode;
  TextEditingController? cropTypeTextController;
  String? Function(BuildContext, String?)? cropTypeTextControllerValidator;
  // State field(s) for soilType widget.
  String? soilTypeValue;
  FormFieldController<String>? soilTypeValueController;
  // State field(s) for irrigationFrequency widget.
  String? irrigationFrequencyValue;
  FormFieldController<String>? irrigationFrequencyValueController;
  // State field(s) for pastYield widget.
  FocusNode? pastYieldFocusNode;
  TextEditingController? pastYieldTextController;
  String? Function(BuildContext, String?)? pastYieldTextControllerValidator;
  // State field(s) for currMarketPrice widget.
  FocusNode? currMarketPriceFocusNode;
  TextEditingController? currMarketPriceTextController;
  String? Function(BuildContext, String?)?
      currMarketPriceTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminiOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fieldAreaFocusNode?.dispose();
    fieldAreaTextController?.dispose();

    cropTypeFocusNode?.dispose();
    cropTypeTextController?.dispose();

    pastYieldFocusNode?.dispose();
    pastYieldTextController?.dispose();

    currMarketPriceFocusNode?.dispose();
    currMarketPriceTextController?.dispose();
  }
}
