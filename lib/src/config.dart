import 'dart:js' as js;

/// An Application Insights instance configuration.
class Config {
  /// The key of your Application Insights resource in Azure.
  String get instrumentationKey => _handle['instrumentationKey'];
  /// Sets the key of your Application Insights resource in Azure.
  set instrumentationKey(String value) => _handle['instrumentationKey'] = value;

  /// The Application Insights server.
  String get endpointUrl => _handle['endpointUrl'];
  /// Sets the Application Insights server URL.
  set endpointUrl(String value) => _handle['endpointUrl'] = value;

  String get accountId => _handle['accountId'];
  set accountId(String value) => _handle['accountId'] = value;

  /// A session is logged if the user is inactive for this time in milliseconds. 
  /// 
  /// Default is 30 mins.
  num get sessionRenewalMs => _handle['sessionRenewalMs'];
  /// Sets the time in milliseconds a user must be inactive before a session is logged.
  set sessionRenewalMs(num value) => _handle['sessionRenewalMs'] = value;

  /// A session is logged if it has continued for this time in milliseconds. 
  /// 
  /// Default is 24h.
  num get sessionExpirationMs => _handle['sessionExpirationMs'];
  /// Sets the time in milliseconds a session must be continued before it's logged.
  set sessionExpirationMs(num value) => _handle['sessionExpirationMs'] = value;

  /// Default is 100k.
  int get maxBatchSizeInBytes => _handle['maxBatchSizeInBytes'];
  set maxBatchSizeInBytes(int value) => _handle['maxBatchSizeInBytes'] = value;

  /// Default is 15s.
  num get maxBatchInterval => _handle['maxBatchInterval'];
  set maxBatchInterval(num value) => _handle['maxBatchInterval'] = value;

  /// If true, debugging data is thrown as an exception by the logger. 
  /// 
  /// Default is false.
  bool get enableDebug => _handle['enableDebug'];
  /// Sets whether debugging data is thrown as an exception by the logger.
  set enableDebug(bool value) => _handle['enableDebug'] = value;

  /// If true, telemetry data is not collected or sent. 
  /// 
  /// Default is false.
  bool get disableTelemetry => _handle['disableTelemetry'];
  /// Sets whether telemetry data should not be collected or sent.
  set disableTelemetry(bool value) => _handle['disableTelemetry'] = value;

  /// If true, the SDK will log all internal errors (any severity) to the console. 
  /// 
  /// Default is false.
  bool get verboseLogging => _handle['verboseLogging'];
  /// Sets whether the SDK should log all internal errors (any severity) to the console.
  set verboseLogging(bool value) => _handle['verboseLogging'] = value;

  /// Controls what percentage of events will be sent. 
  /// 
  /// Default is 100.
  num get samplingPercentage => _handle['samplingPercentage'];
  /// Sets the percentage of events that will be sent.
  set samplingPercentage(num value) => _handle['samplingPercentage'] = value;

  /// Default is 10s.
  num get diagnosticLogInterval => _handle['diagnosticLogInterval'];
  set diagnosticLogInterval(num value) => _handle['diagnosticLogInterval'] = value;

  /// If true, exceptions are not monitored. 
  bool get disableExceptionTracking => _handle['disableExceptionTracking'];
  /// Sets whether exceptions should not be monitored.
  set disableExceptionTracking(bool value) => _handle['disableExceptionTracking'] = value;

  /// If true, Ajax calls are not monitored.
  bool get disableAjaxTracking => _handle['disableAjaxTracking'];
  /// Sets whether Ajax calls should not be monitored.
  set disableAjaxTracking(bool value) => _handle['disableAjaxTracking'] = value;

  /// If true, default behavior of `trackPageView` is changed to record end of page view duration interval when 
  /// `trackPageView` is called. 
  /// 
  /// If false and no custom duration is provided to `trackPageView`, the page view
  /// performance is calculated using the navigation timing API.
  bool get overridePageViewDuration => _handle['overridePageViewDuration'];
  set overridePageViewDuration(bool value) => _handle['overridePageViewDuration'] = value;

  /// Controls how many Ajax calls will be monitored per page view.
  /// 
  /// Set to -1 to monitor all Ajax calls on the page.
  /// 
  /// Default is 500.
  int get maxAjaxCallsPerView => _handle['maxAjaxCallsPerView'];
  set maxAjaxCallsPerView(int value) => _handle['maxAjaxCallsPerView'] = value;

  /// If true, the SDK will not store or read any data from cookies. 
  /// 
  /// Default is false.
  bool get isCookieUseDisabled => _handle['isCookieUseDisabled'];
  set isCookieUseDisabled(bool value) => _handle['isCookieUseDisabled'] = value;

  /// Custom cookie domain. This is helpful if you want to share Application Insights cookies across subdomains.
  String get cookieDomain => _handle['cookieDomain'];
  set cookieDomain(String value) => _handle['cookieDomain'] = value;

  /// If true, flush method will not be called when onBeforeUnload event triggers.
  /// 
  /// Default is false.
  bool get disableFlushOnBeforeUnload => _handle['disableFlushOnBeforeUnload'];
  set disableFlushOnBeforeUnload(bool value) => _handle['disableFlushOnBeforeUnload'] = value;

  /// If true, the buffer with all unsent telemetry is stored in a session storage. The buffer is restored on page load.
  /// 
  /// Defaults to true.
  bool get enableSessionStorageBuffer => _handle['enableSessionStorageBuffer'];
  set enableSessionStorageBuffer(bool value) => _handle['enableSessionStorageBuffer'] = value;

  /// Whether the retry handler is disabled.
  /// 
  /// If false, retry on 206 (partial success), 408 (timeout), 429 (too many requests), 500 (internal server error) and 503 (service unavailable).
  /// 
  /// Default is false.
  bool get isRetryDisabled => _handle['isRetryDisabled'];
  set isRetryDisabled(bool value) => _handle['isRetryDisabled'] = value;

  /// If true, the SDK will not store or read any data from local and session storage. 
  /// 
  /// Default is false.
  bool get isStorageUseDisabled => _handle['isStorageUseDisabled'];
  set isStorageUseDisabled(bool value) => _handle['isStorageUseDisabled']= value;

  /// If false, the SDK will add two headers ('x-ms-request-root-id' and 'x-ms-request-id) 
  /// to all dependency requests (within the same domain) to correlate them with corresponding requests on the server side.
  /// 
  /// Default is true.
  bool get disableCorrelationHeaders => _handle['disableCorrelationHeaders'];
  set disableCorrelationHeaders(bool value) => _handle['disableCorrelationHeaders'] = value;

  /// If true, the SDK will send all telemetry using the [Beacon API](https://www.w3.org/TR/beacon/).
  /// 
  /// When the Beacon API is enabled, then `SessionStorageBuffer` cannot be used and [maxBatchSizeInBytes] is limited to 64kb.
  /// 
  /// Default is true.
  bool get isBeaconApiDisabled => _handle['isBeaconApiDisabled'];
  set isBeaconApiDisabled(bool value) => _handle['isBeaconApiDisabled'] = value;

  /// If true, the SDK will track all [Browser Link](https://docs.microsoft.com/en-us/aspnet/core/client-side/using-browserlink) requests. 
  /// 
  /// Default is false.
  bool get isBrowserLinkTrackingEnabled => _handle['isBrowserLinkTrackingEnabled'];
  set isBrowserLinkTrackingEnabled(bool value) => _handle['isBrowserLinkTrackingEnabled'] = value;

  /// Gets the Dart wrapper of the underlying JavaScript object.
  js.JsObject get jsHandle => _handle;

  final js.JsObject _handle;

  Config._(this._handle);

  /// Creates a new blank Application Insights configuration.
  factory Config() {
    return new Config._(new js.JsObject.jsify(const {}));
  }

  /// Creates an Application Insights configuration from an existing JavaScript [handle].
  factory Config.fromExistingHandle(js.JsObject handle) {
    return new Config._(handle);
  }
}