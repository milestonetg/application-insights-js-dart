import 'dart:js' as js;

import 'config.dart';
import 'severity_level.dart';
import 'telemetry_context.dart';

/// An Application Insights connection.
class AppInsightsInstance {
  Config get config {
    final js.JsObject configHandle = _handle['config'];
    return new Config.fromExistingHandle(configHandle);
  }

  TelemetryContext get context {
    final js.JsObject contextHandle = _handle['context'];
    return new TelemetryContext.fromExistingHandle(contextHandle);
  }

  final js.JsObject _handle;

  AppInsightsInstance._(this._handle);

  factory AppInsightsInstance.fromExistingHandle(js.JsObject handle) {
    return new AppInsightsInstance._(handle);
  }

  /// Logs that a page or other item was viewed.
  /// 
  /// [name] - The string you used as the name in [startTrackPage]. Defaults to the document title.
  /// 
  /// [url] - A relative or absolute URL that identifies the page or other item. Defaults to the window location.
  /// 
  /// [properties] - Additional data used to filter pages and metrics in the portal. Defaults to empty.
  /// 
  /// [measurements] - Metrics associated with this page, displayed in Metrics Explorer on the portal. Defaults to empty.
  /// 
  /// [duration] - The number of milliseconds it took to load the page. Defaults to undefined. 
  /// If set to default value, page load time is calculated internally.
  void trackPageView({String name, String url, Map<String, String> properties, Map<String, num> measurements, int duration}) {
    _handle.callMethod('trackPageView', [
      name,
      url,
      properties != null ? new js.JsObject.jsify(properties) : null,
      measurements != null ? new js.JsObject.jsify(measurements) : null,
      duration
    ]);
  }

  /// Log a user action or other occurrence.
  /// 
  /// [name] - A string to identify this event in the portal. Must not be [null].
  /// 
  /// [properties] - Additional data used to filter events and metrics in the portal. Defaults to empty.
  /// 
  /// [measurements] - Metrics associated with this event, displayed in Metrics Explorer on the portal. Defaults to empty.
  void trackEvent(String name, {Map<String, String> properties, Map<String, num> measurements}) {
    if (name == null) throw new ArgumentError.notNull('name');

    _handle.callMethod('trackEvent', [
      name,
      properties != null ? new js.JsObject.jsify(properties) : null,
      measurements != null ? new js.JsObject.jsify(measurements) : null
    ]);
  }

  /// Log an exception or generic error that you have caught.
  /// 
  /// [exceptionMessage] - The exception message to log. Must not be [null].
  /// 
  /// [handledAt] - Defaults to "unhandled".
  /// 
  /// [properties] - Additional data used to filter events and metrics in the portal. Defaults to empty.
  /// 
  /// [measurements] - Metrics associated with this event, displayed in Metrics Explorer on the portal. Defaults to empty.
  /// 
  /// [severityLevel] - The severity of the exception.
  void trackException(String exceptionMessage, {String handledAt, Map<String, String> properties, Map<String, num> measurements, 
    SeverityLevel severityLevel}) {
    if (exceptionMessage == null) throw new ArgumentError.notNull('exception');

    _handle.callMethod('trackException', [
      exceptionMessage,
      handledAt,
      properties != null ? new js.JsObject.jsify(properties) : null,
      measurements != null ? new js.JsObject.jsify(measurements) : null,
      severityLevel?.index
    ]);
  }

  /// Log a diagnostic message.
  /// 
  /// [message] - A message string. Must not be [null].
  /// 
  /// [properties] - Additional data used to filter events and metrics in the portal. Defaults to empty.
  /// 
  /// [severityLevel] - The severity of the trace.
  void trackTrace(String message, {Map<String, String> properties, SeverityLevel severityLevel}) {
    if (message == null) throw new ArgumentError.notNull('message');
    //AppInsights.prototype.trackTrace = function (message, properties, severityLevel) {
    _handle.callMethod('trackTrace', [
      message,
      properties != null ? new js.JsObject.jsify(properties) : null,
      severityLevel?.index
    ]);
  }

  /// Sets the autheticated user id and the account id in this session.
  /// 
  /// Note: [authenticatedUserId] and [accountId] should not contain commas, semi-colons, equal signs, spaces, or vertical-bars.
  /// 
  /// **Parameters:**
  /// 
  /// [authenticatedUserId] - The authenticated user id. A unique and persistent string that represents each authenticated 
  /// user in the service.
  /// 
  /// [accountId] - An optional string to represent the account associated with the authenticated user.
  void setAuthenticatedUserContext(String authenticatedUserId, [String accountId]) {
    _handle.callMethod('setAuthenticatedUserContext', [
      authenticatedUserId,
      accountId
    ]);
  }

  /// Clears the authenticated user id and the account id from the user context.
  void clearAuthenticatedUserContext() {
    _handle.callMethod('clearAuthenticatedUserContext');
  }
}