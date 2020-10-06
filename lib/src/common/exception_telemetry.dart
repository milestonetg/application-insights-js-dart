part of '../../application_insights_js.dart';

class ExceptionTelemetry with PartC {
  /// Unique guid identifying this error.
  set id(String value) => _jsObject.id = value;
  String get id => _jsObject.id;

  set exception(JsError value) => _jsObject.exception = value?._jsObject;
  JsError get exception => _jsObject.exception == null
      ? null
      : JsError._fromJsObject(_jsObject.exception);

  /// Specified severity of exception for use with telemetry filtering in
  /// dashboard.
  set severityLevel(SeverityLevel value) =>
      _jsObject.severityLevel = value?.index;
  SeverityLevel get severityLevel => _jsObject.severityLevel == null
      ? null
      : SeverityLevel.values[_jsObject.severityLevel];

  @override
  final interop.ExceptionTelemetry _jsObject;

  ExceptionTelemetry() : _jsObject = interop.ExceptionTelemetry();
}
