import '/backend/api_requests/api_calls.dart';
import '/components/weather_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'weather_forecast_page_model.dart';
export 'weather_forecast_page_model.dart';

class WeatherForecastPageWidget extends StatefulWidget {
  const WeatherForecastPageWidget({super.key});

  static String routeName = 'WeatherForecastPage';
  static String routePath = '/weatherForecastPage';

  @override
  State<WeatherForecastPageWidget> createState() =>
      _WeatherForecastPageWidgetState();
}

class _WeatherForecastPageWidgetState extends State<WeatherForecastPageWidget> {
  late WeatherForecastPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeatherForecastPageModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '0y4xbzdn' /* Weather Forecast */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'poppins',
                  color: Colors.black,
                  fontSize: 27.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.5,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: WeatherForecastCall.call(
                          latitude: valueOrDefault<String>(
                            functions.latLngToString(
                                currentUserLocationValue!, true),
                            '25.42',
                          ),
                          longitude: functions.latLngToString(
                              currentUserLocationValue!, false),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final listViewWeatherForecastResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final weatherItems = WeatherForecastCall.date(
                                    listViewWeatherForecastResponse.jsonBody,
                                  )?.toList() ??
                                  [];

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: weatherItems.length,
                                itemBuilder: (context, weatherItemsIndex) {
                                  final weatherItemsItem =
                                      weatherItems[weatherItemsIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: WeatherComponentWidget(
                                      key: Key(
                                          'Keysch_${weatherItemsIndex}_of_${weatherItems.length}'),
                                      date: weatherItemsItem,
                                      minTemp: (WeatherForecastCall.minTemp(
                                        listViewWeatherForecastResponse
                                            .jsonBody,
                                      )?.elementAtOrNull(weatherItemsIndex))
                                          ?.toString(),
                                      maxTemp: (WeatherForecastCall.maxTemp(
                                        listViewWeatherForecastResponse
                                            .jsonBody,
                                      )?.elementAtOrNull(weatherItemsIndex))
                                          ?.toString(),
                                      rain: (WeatherForecastCall.rainProb(
                                        listViewWeatherForecastResponse
                                            .jsonBody,
                                      )?.elementAtOrNull(weatherItemsIndex))
                                          ?.toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
