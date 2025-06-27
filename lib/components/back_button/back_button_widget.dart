import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'back_button_model.dart';
export 'back_button_model.dart';

/// Generate a Flutter back button with a bold black left-facing arrow
/// (Icons.arrow_back).
///
/// The button should have no background, no elevation, and no border, making
/// only the arrow visible. The arrow should be thick and bold, ensuring high
/// visibility. It should be placed at the top-left corner of the screen and
/// use Navigator.pop(context) to navigate back when pressed. The button
/// should maintain proper tap size for accessibility
class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({super.key});

  @override
  State<BackButtonWidget> createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  late BackButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 8.0,
      borderWidth: 0.0,
      buttonSize: 48.0,
      fillColor: Colors.transparent,
      icon: Icon(
        Icons.arrow_back,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 28.0,
      ),
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
