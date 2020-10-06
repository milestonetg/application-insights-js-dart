part of '../application_insights_js.dart';

typedef TelemetryInitializer = bool Function(TelemetryItem item);

class ApplicationInsights {
  final interop.ApplicationInsights _jsObject;

  factory ApplicationInsights(Snippet snippet) {
    return ApplicationInsights._fromJsObject(
        interop.ApplicationInsights(snippet._jsObject));
  }

  ApplicationInsights._fromJsObject(this._jsObject);

  /// Log a user action or other occurrence.
  void trackEvent(EventTelemetry event,
      [Map<String, dynamic> customProperties]) {
    ArgumentError.checkNotNull(event, 'event');

    _jsObject.trackEvent(event._jsObject, jsEncode(customProperties));
  }

  /// Logs that a page, or similar container was displayed to the user.
  void trackPageView([PageViewTelemetry pageView]) {
    _jsObject.trackPageView(pageView?._jsObject);
  }

  /// Log a bag of performance information via the `customProperties` field.
  void trackPageViewPerformance(
      PageViewPerformanceTelemetry pageViewPerformance) {
    ArgumentError.checkNotNull(pageViewPerformance, 'pageViewPerformance');

    _jsObject.trackPageViewPerformance(pageViewPerformance._jsObject);
  }

  /// Log an exception that you have caught.
  void trackException(ExceptionTelemetry exception) {
    ArgumentError.checkNotNull(exception, 'exception');

    _jsObject.trackException(exception._jsObject);
  }

  /// Log a diagnostic scenario such entering or leaving a function.
  void trackTrace(TraceTelemetry trace,
      [Map<String, dynamic> customProperties]) {
    ArgumentError.checkNotNull(trace, 'trace');

    _jsObject.trackTrace(trace._jsObject, jsEncode(customProperties));
  }

  /// Log a numeric value that is not associated with a specific event.
  /// Typically used to send regular reports of performance indicators.
  ///
  /// To send a single measurement, just use the `name` and `average` fields
  /// of [MetricTelemetry].
  ///
  /// If you take measurements frequently, you can reduce the telemetry
  /// bandwidth by aggregating multiple measurements and sending the resulting
  /// average and modifying the `sampleCount` field of [MetricTelemetry].
  ///
  /// [metric] - Metric input object argument. Only `name` and `average` are
  /// mandatory.
  void trackMetric(MetricTelemetry metric,
      [Map<String, dynamic> customProperties]) {
    ArgumentError.checkNotNull(metric, 'metric');

    _jsObject.trackMetric(metric._jsObject, jsEncode(customProperties));
  }

  /// Starts the timer for tracking a page load time.
  ///
  /// Use this instead of [trackPageView] if you want to control when the page
  /// view timer starts and stops, but don't want to calculate the duration
  /// yourself. This method doesn't send any telemetry. Call [stopTrackPage] to
  /// log the end of the page view and send the event.
  ///
  /// [name] - A string that idenfities this item, unique within this HTML
  /// document. Defaults to the document title.
  void startTrackPage([String name]) {
    _jsObject.startTrackPage(name);
  }

  /// Stops the timer that was started by calling [startTrackPage] and sends
  /// the pageview load time telemetry with the specified [properties] and
  /// [measurements].
  ///
  /// The duration of the page view will be the time between calling
  /// [startTrackPage] and [stopTrackPage].
  ///
  /// [name] - The string you used as the name in startTrackPage.
  /// Defaults to the document title.
  ///
  /// [url] - A relative or absolute URL that identifies the page or other item.
  /// Defaults to the window location.
  ///
  /// [properties] - Additional data used to filter pages and metrics in
  /// the portal. Defaults to empty.
  ///
  /// [measurements] - Metrics associated with this page, displayed in Metrics
  /// Explorer on the portal. Defaults to empty.
  void stopTrackPage(
      [String name,
      String url,
      Map<String, dynamic> properties,
      Map<String, num> measurements]) {
    _jsObject.stopTrackPage(
        name, url, jsEncode(properties), jsEncode(measurements));
  }

  void startTrackEvent(String name) {
    _jsObject.startTrackEvent(name);
  }

  /// Log an extended event that you started timing with [startTrackEvent].
  ///
  /// [name] - The string you used to identify this event in [startTrackEvent].
  ///
  /// [properties] - Additional data used to filter events and metrics in the
  /// portal. Defaults to empty.
  ///
  /// [measurements] - Metrics associated with this event, displayed in Metrics
  /// Explorer on the portal. Defaults to empty.
  void stopTrackEvent(String name,
      [Map<String, dynamic> properties, Map<String, num> measurements]) {
    _jsObject.stopTrackEvent(
        name, jsEncode(properties), jsEncode(measurements));
  }

  void addTelemetryInitializer(TelemetryInitializer telemetryInitializer) {
    ArgumentError.checkNotNull(telemetryInitializer, 'telemetryInitializer');

    // Wrap the initializer to convert TelemetryItem
    bool jsCallback(interop.TelemetryItem item) {
      return telemetryInitializer(TelemetryItem._fromJsObject(item));
    }

    _jsObject.addTelemetryInitializer(allowInterop(jsCallback));
  }

  /// Set the authenticated user id and the account id. Used for identifying a
  /// specific signed-in user. Parameters must not contain whitespace or `,;=|`.
  ///
  /// The method will only set the `authenticatedUserId` and `accountId` in the
  /// current page view. To set them for the whole session, you should set
  /// `storeInCookie = true`.
  void setAuthenticatedUserContext(String authenticatedUserId,
      [String accountId, bool storeInCookie]) {
    _jsObject.setAuthenticatedUserContext(
        authenticatedUserId, accountId, storeInCookie);
  }

  /// Clears the authenticated user id and account id. The associated cookie is
  /// cleared, if present.
  void clearAuthenticatedUserContext() {
    _jsObject.clearAuthenticatedUserContext();
  }

  /// Log a dependency call (e.g. ajax).
  void trackDependencyData(DependencyTelemetry dependency) {
    ArgumentError.checkNotNull(dependency, 'dependency');

    _jsObject.trackDependencyData(dependency._jsObject);
  }

  /// Initialize this instance of ApplicationInsights.
  void loadAppInsights() {
    _jsObject.loadAppInsights();
  }
}
