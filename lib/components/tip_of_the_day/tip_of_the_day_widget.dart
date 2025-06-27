import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'tip_of_the_day_model.dart';
export 'tip_of_the_day_model.dart';

/// "Create a custom component in FlutterFlow for a farmer's app that displays
/// a 'Tip of the Day' at the top of the dashboard.
///
/// The component should feature a lightbulb icon on the left side to
/// symbolize an idea, and a text area on the right displaying 'Tip of the
/// Day: [Agriculture Tip]'. The background should have a farm-themed color,
/// such as light green, soft yellow, or earthy tones, and the component
/// should have rounded corners for a clean and modern look. Apply padding
/// inside the container to avoid the text and icon being cramped, and add a
/// subtle shadow effect for elevation to make the component stand out. The
/// text should be styled with a simple, readable font like Roboto or Arial,
/// in a dark color like green or black to contrast with the background. The
/// lightbulb icon should also match the farm theme with a green or warm
/// color. This component will be placed at the top of the dashboard screen
/// for easy visibility and should be responsive across all devices.
class TipOfTheDayWidget extends StatefulWidget {
  const TipOfTheDayWidget({super.key});

  @override
  State<TipOfTheDayWidget> createState() => _TipOfTheDayWidgetState();
}

class _TipOfTheDayWidgetState extends State<TipOfTheDayWidget> {
  late TipOfTheDayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipOfTheDayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          height: 118.46,
          decoration: BoxDecoration(
            color: Color(0xFFEEF9EE),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE2F5CD),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.lightbulb_rounded,
                      color: Color(0xFF1D8C11),
                      size: 30.0,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 3.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'th8o9i2u' /* Tip of the Day */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'poppins',
                                    color: Color(0xFF1D8C11),
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Text(
                              valueOrDefault<String>(
                                functions.getTipOfTheDay(),
                                'Use mulch to retain soil moisture and prevent weed growth!',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
