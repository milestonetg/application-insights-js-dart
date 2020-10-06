part of '../../application_insights_js.dart';

class TraceTelemetry with PartC {
  /// A message string.
  set message(String value) => _jsObject.message = value;
  String get message => _jsObject.message;

  /// Severity level of the logging message used for filtering in the portal.
  set severityLevel(SeverityLevel value) =>
      _jsObject.severityLevel = value?.index;
  SeverityLevel get severityLevel => _jsObject.severityLevel == null
      ? null
      : SeverityLevel.values[_jsObject.severityLevel];

  @override
  final interop.TraceTelemetry _jsObject;

  TraceTelemetry({@required String message})
      : _jsObject = interop.TraceTelemetry() {
    this.message = message;
  }
}
