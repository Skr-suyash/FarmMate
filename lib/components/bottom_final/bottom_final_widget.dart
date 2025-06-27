import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'bottom_final_model.dart';
export 'bottom_final_model.dart';

/// Create a Flutter navigation bar with a simple and modern design using an
/// earthy, farmer-friendly theme.
///
/// The navigation bar should include four fully clickable buttons: a Home
/// button to navigate to the Home Page, a Chatbot button to access the
/// chatbot feature, an AI button that leads to the AI Prediction Page for
/// disease detection and yield prediction, and a Profile button that opens
/// the Farmer’s Profile Page. The navigation should be implemented using
/// BottomNavigationBar with proper state management to ensure smooth and
/// responsive interactions. Each button should be clearly visible,
/// well-spaced, and feature rounded icons with a highlight effect when
/// selected. The design should incorporate earthy tones such as brown and
/// beige for the background, while the icons should be in contrasting colors
/// like white or dark green. The navigation bar must remain fixed at the
/// bottom of the screen and adapt well to various screen sizes. Navigation
/// should be handled using Navigator.push() to seamlessly transition between
/// pages. The UI should be clean, intuitive, and optimized for mobile users,
/// ensuring a smooth experience for farmers using the Farm Mate app
class BottomFinalWidget extends StatefulWidget {
  const BottomFinalWidget({super.key});

  @override
  State<BottomFinalWidget> createState() => _BottomFinalWidgetState();
}

class _BottomFinalWidgetState extends State<BottomFinalWidget> {
  late BottomFinalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomFinalModel());
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
      child: Container(
        width: double.infinity,
        height: 76.8,
        decoration: BoxDecoration(
          color: Color(0xFFFFFEFE),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          border: Border.all(
            color: Color(0xC9D9D9D9),
            width: 0.75,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(Dash2Widget.routeName);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 100.0,
                        borderWidth: 1.0,
                        buttonSize: 33.93,
                        icon: Icon(
                          Icons.home_rounded,
                          color: Color(0xFF4C3C3C),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            Dash2Widget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '1bdll569' /* Home */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'poppins',
                            color: Color(0xFF4C3C3C),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    ChatbotGeminiWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 250),
                      ),
                    },
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Color(0xFF4C3C3C),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            ChatbotGeminiWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 250),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'y5hquj5q' /* Chatbot */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'poppins',
                            color: Color(0xFF4C3C3C),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    AIPageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 250),
                      ),
                    },
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.auto_awesome_rounded,
                          color: Color(0xFF4C3C3C),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            AIPageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 250),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'piprrjaw' /* AI */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'poppins',
                            color: Color(0xFF4C3C3C),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    ProfilePageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 250),
                      ),
                    },
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Color(0xFFFCFCFC),
                        icon: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF4C3C3C),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            ProfilePageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 250),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'cre74p1l' /* Profile */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'poppins',
                            color: Color(0xFF4C3C3C),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ].divide(SizedBox(width: 0.0)).around(SizedBox(width: 0.0)),
          ),
        ),
      ),
    );
  }
}
