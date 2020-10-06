part of '../interop.dart';

/// AppInsightsCommon IExceptionTelemetry
@anonymous
@JS()
class ExceptionTelemetry extends PartC {
  external String get id;
  external set id(String value);

  external JsError get exception;
  external set exception(JsError value);

  external int get severityLevel;
  external set severityLevel(int value);
}
