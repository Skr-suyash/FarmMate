import '/components/bottom_final/bottom_final_widget.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/tip_of_the_day/tip_of_the_day_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dash2_widget.dart' show Dash2Widget;
import 'package:flutter/material.dart';

class Dash2Model extends FlutterFlowModel<Dash2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TipOfTheDay component.
  late TipOfTheDayModel tipOfTheDayModel;
  // Model for bottomFinal component.
  late BottomFinalModel bottomFinalModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    tipOfTheDayModel = createModel(context, () => TipOfTheDayModel());
    bottomFinalModel = createModel(context, () => BottomFinalModel());
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    tipOfTheDayModel.dispose();
    bottomFinalModel.dispose();
    sidebarModel.dispose();
  }
}
