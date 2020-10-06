part of '../interop.dart';

/// AppInsightsCommon IMetricTelemetry
@anonymous
@JS()
class MetricTelemetry extends PartC {
  external String get name;
  external set name(String value);

  external num get average;
  external set average(num value);

  external int get sampleCount;
  external set sampleCount(int value);

  external num get min;
  external set min(num value);

  external num get max;
  external set max(num value);
}
