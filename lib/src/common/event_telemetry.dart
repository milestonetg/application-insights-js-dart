part of '../../application_insights_js.dart';

class EventTelemetry with PartC {
  /// An event name string.
  set name(String value) => _jsObject.name = value;
  String get name => _jsObject.name;

  @override
  final interop.EventTelemetry _jsObject;

  EventTelemetry({@required String name})
      : _jsObject = interop.EventTelemetry() {
    this.name = name;
  }
}
