import '/components/bottom_final/bottom_final_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_i_page_widget.dart' show AIPageWidget;
import 'package:flutter/material.dart';

class AIPageModel extends FlutterFlowModel<AIPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomFinal component.
  late BottomFinalModel bottomFinalModel;

  @override
  void initState(BuildContext context) {
    bottomFinalModel = createModel(context, () => BottomFinalModel());
  }

  @override
  void dispose() {
    bottomFinalModel.dispose();
  }
}
