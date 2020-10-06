part of '../../application_insights_js.dart';

class DependencyTelemetry with PartC {
  set id(String value) => _jsObject.id = value;
  String get id => _jsObject.id;

  set name(String value) => _jsObject.name = value;
  String get name => _jsObject.name;

  set duration(num value) => _jsObject.duration = value;
  num get duration => _jsObject.duration;

  set success(bool value) => _jsObject.success = value;
  bool get success => _jsObject.success;

  set startTime(DateTime value) => _jsObject.startTime = value;
  DateTime get startTime => _jsObject.startTime;

  set responseCode(int value) => _jsObject.responseCode = value;
  int get responseCode => _jsObject.responseCode;

  set correlationContext(String value) => _jsObject.correlationContext = value;
  String get correlationContext => _jsObject.correlationContext;

  set type(String value) => _jsObject.type = value;
  String get type => _jsObject.type;

  set data(String value) => _jsObject.data = value;
  String get data => _jsObject.data;

  set target(String value) => _jsObject.target = value;
  String get target => _jsObject.target;

  @override
  final interop.DependencyTelemetry _jsObject;

  DependencyTelemetry({@required String id, @required int responseCode})
      : _jsObject = interop.DependencyTelemetry() {
    this.id = id;
    this.responseCode = responseCode;
  }
}
