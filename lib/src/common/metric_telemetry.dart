part of '../../application_insights_js.dart';

class MetricTelemetry with PartC {
  /// (required) - Name of this metric.
  set name(String value) => _jsObject.name = value;
  String get name => _jsObject.name;

  /// (required) - Recorded value/average for this metric.
  set average(num value) => _jsObject.average = value;
  num get average => _jsObject.average;

  /// (optional) Number of samples represented by the [average].
  set sampleCount(int value) => _jsObject.sampleCount = value;
  int get sampleCount => _jsObject.sampleCount;

  /// (optional) The smallest measurement in the sample.
  ///
  /// Defaults to the [average].
  set min(num value) => _jsObject.min = value;
  num get min => _jsObject.min;

  /// (optional) The largest measurement in the sample.
  ///
  /// Defaults to the [average].
  set max(num value) => _jsObject.max = value;
  num get max => _jsObject.max;

  @override
  final interop.MetricTelemetry _jsObject;

  MetricTelemetry({@required String name, @required num average})
      : _jsObject = interop.MetricTelemetry() {
    this.name = name;
    this.average = average;
  }
}
