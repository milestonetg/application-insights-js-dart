part of '../interop.dart';

/// AppInsightsCommon ITraceTelemetry
@anonymous
@JS()
class TraceTelemetry extends PartC {
  external String get message;
  external set message(String value);

  external int get severityLevel;
  external set severityLevel(int value);
}
