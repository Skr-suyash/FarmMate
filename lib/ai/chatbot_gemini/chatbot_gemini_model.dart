import '/components/bottom_final/bottom_final_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chatbot_gemini_widget.dart' show ChatbotGeminiWidget;
import 'package:flutter/material.dart';

class ChatbotGeminiModel extends FlutterFlowModel<ChatbotGeminiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? result;
  // Model for bottomFinal component.
  late BottomFinalModel bottomFinalModel;

  @override
  void initState(BuildContext context) {
    bottomFinalModel = createModel(context, () => BottomFinalModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomFinalModel.dispose();
  }
}
