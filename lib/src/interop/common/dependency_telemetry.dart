part of '../interop.dart';

/// AppInsightsCommon IDependencyTelemetry
@anonymous
@JS()
class DependencyTelemetry extends PartC {
  external String get id;
  external set id(String value);

  external String get name;
  external set name(String value);

  external num get duration;
  external set duration(num value);

  external bool get success;
  external set success(bool value);

  external DateTime get startTime;
  external set startTime(DateTime value);

  external int get responseCode;
  external set responseCode(int value);

  external String get correlationContext;
  external set correlationContext(String value);

  external String get type;
  external set type(String value);

  external String get data;
  external set data(String value);

  external String get target;
  external set target(String value);
}
