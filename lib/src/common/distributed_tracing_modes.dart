part of '../../application_insights_js.dart';

enum DistributedTracingModes {
  /// Send Application Insights correlation headers.
  ai,

  /// Send both W3C Trace Context headers and back-compatibility Application Insights headers.
  aiAndW3c,

  /// Send W3C Trace Context headers.
  w3c
}
