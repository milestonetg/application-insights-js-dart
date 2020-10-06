part of 'interop.dart';

typedef TelemetryInitializer = bool Function(TelemetryItem item);

/// Known internally as "Initialization".
@JS('ApplicationInsights')
class ApplicationInsights {
  external ApplicationInsights(Snippet snippet);

  external void trackEvent(EventTelemetry event, [dynamic customProperties]);
  external void trackPageView([PageViewTelemetry pageView]);
  external void trackPageViewPerformance(
      PageViewPerformanceTelemetry pageViewPerformance);
  external void trackException(ExceptionTelemetry exception);
  external void trackTrace(TraceTelemetry trace, [dynamic customProperties]);
  external void trackMetric(MetricTelemetry metric, [dynamic customProperties]);

  external void startTrackPage([String name]);
  external void stopTrackPage(
      [String name,
      String url,
      dynamic customProperties,
      dynamic measurements]);

  external void startTrackEvent([String name]);
  external void stopTrackEvent(
      [String name, dynamic customProperties, dynamic measurements]);

  external void addTelemetryInitializer(
      TelemetryInitializer telemetryInitializer);

  external void setAuthenticatedUserContext(String authenticatedUserId,
      [String accountId, bool storeInCookie]);
  external void clearAuthenticatedUserContext();

  external void trackDependencyData(DependencyTelemetry dependency);

  external void loadAppInsights();
}
