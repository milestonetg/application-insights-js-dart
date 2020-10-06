part of '../../application_insights_js.dart';

mixin Config {
  bool get emitLineDelimitedJson => _jsObject.emitLineDelimitedJson;
  // TODO: document
  set emitLineDelimitedJson(bool value) =>
      _jsObject.emitLineDelimitedJson = value;

  String get accountId => _jsObject.accountId;
  // TODO: document
  set accountId(String value) => _jsObject.accountId = value;

  num get sessionRenewalMs => _jsObject.sessionRenewalMs;

  /// Sets the time in milliseconds a user must be inactive before a session is logged.
  ///
  /// Default is 30 minutes.
  set sessionRenewalMs(num value) => _jsObject.sessionRenewalMs = value;

  num get sessionExpirationMs => _jsObject.sessionExpirationMs;

  /// Sets the time in milliseconds a session must continue before it's logged.
  ///
  /// Default is 24 hours.
  set sessionExpirationMs(num value) => _jsObject.sessionExpirationMs = value;

  int get maxBatchSizeInBytes => _jsObject.maxBatchSizeInBytes;

  /// Sets the max size of the telemetry batch.
  ///
  /// If the batch exceeds this limit, it is sent and a new batch is started.
  ///
  /// Default is 100,000 bytes.
  set maxBatchSizeInBytes(int value) => _jsObject.maxBatchSizeInBytes = value;

  num get maxBatchInterval => _jsObject.maxBatchInterval;

  /// Sets the time in milliseconds that telemetry will be batched for before sending.
  ///
  /// Default is 15 seconds.
  set maxBatchInterval(num value) => _jsObject.maxBatchInterval = value;

  bool get enableDebug => _jsObject.enableDebug;

  /// Sets whether debugging data is thrown as an exception by the logger.
  ///
  /// Default is false.
  set enableDebug(bool value) => _jsObject.enableDebug = value;

  /// If true, exceptions are not monitored.
  bool get disableExceptionTracking => _jsObject.disableExceptionTracking;

  /// Sets whether exceptions should not be autocollected.
  ///
  /// Default is false.
  set disableExceptionTracking(bool value) =>
      _jsObject.disableExceptionTracking = value;

  bool get disableTelemetry => _jsObject.disableTelemetry;

  /// Sets whether telemetry data should not be collected or sent.
  ///
  /// Default is false.
  set disableTelemetry(bool value) => _jsObject.disableTelemetry = value;

  num get samplingPercentage => _jsObject.samplingPercentage;

  /// Sets the percentage of events that will be sent.
  ///
  /// Default is 100, meaning all events are sent.
  set samplingPercentage(num value) => _jsObject.samplingPercentage = value;

  bool get autoTrackPageVisitTime => _jsObject.autoTrackPageVisitTime;

  /// Sets whether, on a pageview, the previous instrumented page's view time is tracked and sent
  /// as telemetry and a new timer is started for the current pageview.
  ///
  /// Default is false.
  set autoTrackPageVisitTime(bool value) =>
      _jsObject.autoTrackPageVisitTime = value;

  bool get enableAutoRouteTracking => _jsObject.enableAutoRouteTracking;

  /// Sets whether route changes in Single Page Applications (SPA) should be automatically tracked.
  ///
  /// If true, each route change will send a new Pageview to Application Insights.
  ///
  /// Default is false.
  set enableAutoRouteTracking(bool value) =>
      _jsObject.enableAutoRouteTracking = value;

  bool get disableAjaxTracking => _jsObject.disableAjaxTracking;

  /// Sets whether Ajax calls should not be autocollected.
  ///
  /// Default is false.
  set disableAjaxTracking(bool value) => _jsObject.disableAjaxTracking = value;

  bool get disableFetchTracking => _jsObject.disableFetchTracking;

  /// Sets whether Fetch requests should not be autocollected.
  ///
  /// Default is true.
  set disableFetchTracking(bool value) =>
      _jsObject.disableFetchTracking = value;

  bool get overridePageViewDuration => _jsObject.overridePageViewDuration;

  /// Sets whether the default behavior of `trackPageView` should be changed to record end of page view
  /// duration interval when `trackPageView` is called.
  ///
  /// If false and no custom duration is provided to `trackPageView`, the page view
  /// performance is calculated using the navigation timing API.
  ///
  /// Default is false.
  set overridePageViewDuration(bool value) =>
      _jsObject.overridePageViewDuration = value;

  int get maxAjaxCallsPerView => _jsObject.maxAjaxCallsPerView;

  /// Sets how many Ajax calls will be monitored per page view.
  ///
  /// Set to -1 to monitor all (unlimited) Ajax calls on the page.
  ///
  /// Default is 500.
  set maxAjaxCallsPerView(int value) => _jsObject.maxAjaxCallsPerView = value;

  bool get disableDataLossAnalysis => _jsObject.disableDataLossAnalysis;

  /// Sets whether internal telemetry sender buffers should not be checked at startup for
  /// items not yet sent.
  ///
  /// Default is true.
  set disableDataLossAnalysis(bool value) =>
      _jsObject.disableDataLossAnalysis = value;

  bool get disableCorrelationHeaders => _jsObject.disableCorrelationHeaders;

  /// If set to false, the SDK will add two headers ('Request-Id' and 'Request-Context')
  /// to all dependency requests to correlate them with corresponding requests on the server side.
  ///
  /// Default is false.
  set disableCorrelationHeaders(bool value) =>
      _jsObject.disableCorrelationHeaders = value;

  DistributedTracingModes get distributedTracingMode =>
      _jsObject.distributedTracingMode == null
          ? null
          : DistributedTracingModes.values[_jsObject.distributedTracingMode];

  /// Sets the distributed tracing mode. If [DistributedTracingModes.aiAndW3c] or [DistributedTracingModes.w3c] mode is set,
  /// W3C trace context headers (traceparent/tracestate) will be generated and included in all outgoing requests.
  ///
  /// [DistributedTracingModes.aiAndW3c] is provided for back-compatibility with any legacy Application Insights
  /// instrumented services.
  set distributedTracingMode(DistributedTracingModes value) =>
      _jsObject.distributedTracingMode = value?.index;

  List<String> get correlationHeaderExcludedDomains =>
      jsDecodeList<String>(_jsObject.correlationHeaderExcludedDomains);

  /// Sets domains that should not include correlation headers.
  set correlationHeaderExcludedDomains(List<String> value) =>
      _jsObject.correlationHeaderExcludedDomains = jsEncode(value);

  bool get disableFlushOnBeforeUnload => _jsObject.disableFlushOnBeforeUnload;

  /// Sets whether the flush method should not be called when the `onBeforeUnload` event triggers.
  ///
  /// Default is false.
  set disableFlushOnBeforeUnload(bool value) =>
      _jsObject.disableFlushOnBeforeUnload = value;

  bool get disableFlushOnUnload => _jsObject.disableFlushOnUnload;

  /// Sets whether the flush method should not be called when the `onUnload` event triggers.
  ///
  /// Default is the value of [disableFlushOnBeforeUnload].
  set disableFlushOnUnload(bool value) =>
      _jsObject.disableFlushOnUnload = value;

  bool get enableSessionStorageBuffer => _jsObject.enableSessionStorageBuffer;

  /// Sets whether the buffer with all unsent telemetry should be stored in session storage.
  /// The buffer is restored on page load.
  ///
  /// Default is true.
  set enableSessionStorageBuffer(bool value) =>
      _jsObject.enableSessionStorageBuffer = value;

  bool get isCookieUseDisabled => _jsObject.isCookieUseDisabled;

  /// Sets whether the SDK should not store or read any data from cookies.
  ///
  /// Default is false.
  set isCookieUseDisabled(bool value) => _jsObject.isCookieUseDisabled = value;

  String get cookieDomain => _jsObject.cookieDomain;

  /// Sets a custom cookie domain.
  ///
  /// This is helpful if you want to share Application Insights cookies across subdomains.
  set cookieDomain(String value) => _jsObject.cookieDomain = value;

  bool get isRetryDisabled => _jsObject.isRetryDisabled;

  /// If set to false, retry on 206 (partial success), 408 (timeout), 429 (too many requests),
  /// 500 (internal server error), 503 (service unavailable), and 0 (offline, only if detected).
  ///
  /// Default is false.
  set isRetryDisabled(bool value) => _jsObject.isRetryDisabled = value;

  bool get isStorageUseDisabled => _jsObject.isStorageUseDisabled;

  /// Sets whether the SDK should not store or read any data from local and session storage.
  ///
  /// Default is false.
  set isStorageUseDisabled(bool value) =>
      _jsObject.isStorageUseDisabled = value;

  bool get isBeaconApiDisabled => _jsObject.isBeaconApiDisabled;

  /// If set to false, the SDK will send all telemetry using the [Beacon API](https://www.w3.org/TR/beacon/).
  ///
  /// Default is true.
  set isBeaconApiDisabled(bool value) => _jsObject.isBeaconApiDisabled = value;

  String get sdkExtension => _jsObject.sdkExtension;

  /// Sets the SDK extension name. Only alphabetic characters are allowed.
  ///
  /// The extension name is added as a prefix to the `ai.internal.sdkVersion` tag (e.g. `ext_javascript:2.0.0`).
  ///
  /// Default is null.
  set sdkExtension(String value) => _jsObject.sdkExtension = value;

  bool get isBrowserLinkTrackingEnabled =>
      _jsObject.isBrowserLinkTrackingEnabled;

  /// Sets whether the SDK should track all [Browser Link](https://docs.microsoft.com/en-us/aspnet/core/client-side/using-browserlink) requests.
  ///
  /// Default is false.
  set isBrowserLinkTrackingEnabled(bool value) =>
      _jsObject.isBrowserLinkTrackingEnabled = value;

  String get appId => _jsObject.appId;

  /// Sets the AppId used for the correlation between AJAX dependencies happening on the client-side
  /// with the server-side requests.
  ///
  /// When Beacon API is enabled, it cannot be used automatically, but can be set manually in the configuration.
  ///
  /// Dfeault is null.
  set appId(String value) => _jsObject.appId = value;

  bool get enableCorsCorrelation => _jsObject.enableCorsCorrelation;

  /// Sets whether the SDK should add two headers ('Request-Id' and 'Request-Context') to all CORS
  /// requests to correlate outgoing AJAX dependencies with corresponding requests on the server side.
  ///
  /// Default is false.
  set enableCorsCorrelation(bool value) =>
      _jsObject.enableCorsCorrelation = value;

  String get namePrefix => _jsObject.namePrefix;

  /// Sets an optional value that will be used as name postfix for localStorage and cookie name.
  ///
  /// Default is null.
  set namePrefix(String value) => _jsObject.namePrefix = value;

  bool get enableRequestHeaderTracking => _jsObject.enableRequestHeaderTracking;

  /// An optional value that will track Request Header through trackDependency function.
  ///
  /// Default is false.
  set enableRequestHeaderTracking(bool value) =>
      _jsObject.enableRequestHeaderTracking = value;

  bool get enableResponseHeaderTracking =>
      _jsObject.enableResponseHeaderTracking;

  /// An optional value that will track Response Header through trackDependency function.
  ///
  /// Default is false.
  set enableResponseHeaderTracking(bool value) =>
      _jsObject.enableResponseHeaderTracking = value;

  bool get enableAjaxErrorStatusText => _jsObject.enableAjaxErrorStatusText;

  /// An optional value that will track Response Error data through trackDependency function.
  ///
  /// Default is false.
  set enableAjaxErrorStatusText(bool value) =>
      _jsObject.enableAjaxErrorStatusText = value;

  bool get enableAjaxPerfTracking => _jsObject.enableAjaxPerfTracking;

  /// Flag to enable looking up and including additional browser window.performance timings
  /// in the reported ajax (XHR and fetch) reported metrics.
  ///
  /// Default is false.
  set enableAjaxPerfTracking(bool value) =>
      _jsObject.enableAjaxPerfTracking = value;

  int get maxAjaxPerfLookupAttempts => _jsObject.maxAjaxPerfLookupAttempts;

  /// The maximum number of times to look for the window.performance timings (if available), this
  /// is required as not all browsers populate the window.performance before reporting the
  /// end of the XHR request and for fetch requests this is added after its complete.
  ///
  /// Default is 3.
  set maxAjaxPerfLookupAttempts(int value) =>
      _jsObject.maxAjaxPerfLookupAttempts = value;

  num get ajaxPerfLookupDelay => _jsObject.ajaxPerfLookupDelay;

  /// The amount of time to wait before re-attempting to find the windows.performance timings
  /// for an ajax request, time is in milliseconds and is passed directly to setTimeout().
  ///
  /// Default is 25.
  set ajaxPerfLookupDelay(num value) => _jsObject.ajaxPerfLookupDelay = value;

  bool get onunloadDisableBeacon => _jsObject.onunloadDisableBeacon;

  /// When tab is closed, the SDK will send all remaining telemetry using the [Beacon API](https://www.w3.org/TR/beacon).
  ///
  /// Default is false.
  set onunloadDisableBeacon(bool value) =>
      _jsObject.onunloadDisableBeacon = value;

  interop.SnippetConfig get _jsObject;
}
