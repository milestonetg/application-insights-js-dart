part of '../interop.dart';

/// AppInsightsCore ITelemetryItem
@anonymous
@JS()
class TelemetryItem {
  external String get ver;
  external set ver(String value);

  external String get name;
  external set name(String value);

  external String get time;
  external set time(String value);

  external String get iKey;
  external set iKey(String value);

  external dynamic get ext;
  external set ext(dynamic value);

  external dynamic get tags;
  external set tags(dynamic value);

  external dynamic get data;
  external set data(dynamic value);

  external String get baseType;
  external set baseType(String value);

  external dynamic get baseData;
  external set baseData(dynamic value);
}
