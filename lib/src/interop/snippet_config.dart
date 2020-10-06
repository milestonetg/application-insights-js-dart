part of 'interop.dart';

// Note: I'd really love to split this into two mixins, but it breaks dart2js.

@anonymous
@JS()
class SnippetConfig {
  // AppInsightsCommon IConfig

  external bool get emitLineDelimitedJson;
  external set emitLineDelimitedJson(bool value);

  external String get accountId;
  external set accountId(String value);

  external num get sessionRenewalMs;
  external set sessionRenewalMs(num value);

  external num get sessionExpirationMs;
  external set sessionExpirationMs(num value);

  external num get maxBatchSizeInBytes;
  external set maxBatchSizeInBytes(num value);

  external num get maxBatchInterval;
  external set maxBatchInterval(num value);

  external bool get enableDebug;
  external set enableDebug(bool value);

  external bool get disableExceptionTracking;
  external set disableExceptionTracking(bool value);

  external bool get disableTelemetry;
  external set disableTelemetry(bool value);

  external num get samplingPercentage;
  external set samplingPercentage(num value);

  external bool get autoTrackPageVisitTime;
  external set autoTrackPageVisitTime(bool value);

  external bool get enableAutoRouteTracking;
  external set enableAutoRouteTracking(bool value);

  external bool get disableAjaxTracking;
  external set disableAjaxTracking(bool value);

  external bool get disableFetchTracking;
  external set disableFetchTracking(bool value);

  external bool get overridePageViewDuration;
  external set overridePageViewDuration(bool value);

  external num get maxAjaxCallsPerView;
  external set maxAjaxCallsPerView(num value);

  external bool get disableDataLossAnalysis;
  external set disableDataLossAnalysis(bool value);

  external bool get disableCorrelationHeaders;
  external set disableCorrelationHeaders(bool value);

  external int get distributedTracingMode;
  external set distributedTracingMode(int value);

  external List get correlationHeaderExcludedDomains;
  external set correlationHeaderExcludedDomains(List value);

  external bool get disableFlushOnBeforeUnload;
  external set disableFlushOnBeforeUnload(bool value);

  external bool get disableFlushOnUnload;
  external set disableFlushOnUnload(bool value);

  external bool get enableSessionStorageBuffer;
  external set enableSessionStorageBuffer(bool value);

  external bool get isCookieUseDisabled;
  external set isCookieUseDisabled(bool value);

  external String get cookieDomain;
  external set cookieDomain(String value);

  external bool get isRetryDisabled;
  external set isRetryDisabled(bool value);

  external bool get isStorageUseDisabled;
  external set isStorageUseDisabled(bool value);

  external bool get isBeaconApiDisabled;
  external set isBeaconApiDisabled(bool value);

  external String get sdkExtension;
  external set sdkExtension(String value);

  external bool get isBrowserLinkTrackingEnabled;
  external set isBrowserLinkTrackingEnabled(bool value);

  external String get appId;
  external set appId(String value);

  external bool get enableCorsCorrelation;
  external set enableCorsCorrelation(bool value);

  external String get namePrefix;
  external set namePrefix(String value);

  external bool get enableRequestHeaderTracking;
  external set enableRequestHeaderTracking(bool value);

  external bool get enableResponseHeaderTracking;
  external set enableResponseHeaderTracking(bool value);

  external bool get enableAjaxErrorStatusText;
  external set enableAjaxErrorStatusText(bool value);

  external bool get enableAjaxPerfTracking;
  external set enableAjaxPerfTracking(bool value);

  external int get maxAjaxPerfLookupAttempts;
  external set maxAjaxPerfLookupAttempts(int value);

  external num get ajaxPerfLookupDelay;
  external set ajaxPerfLookupDelay(num value);

  external bool get onunloadDisableBeacon;
  external set onunloadDisableBeacon(bool value);

  // AppInsightsCore IConfiguration

  external String get instrumentationKey;
  external set instrumentationKey(String value);

  external String get connectionString;
  external set connectionString(String value);

  external num get diagnosticLogInterval;
  external set diagnosticLogInterval(num value);

  external int get maxMessageLimit;
  external set maxMessageLimit(int value);

  external int get loggingLevelConsole;
  external set loggingLevelConsole(int value);

  external int get loggingLevelTelemetry;
  external set loggingLevelTelemetry(int value);

  external bool get enableDebugExceptions;
  external set enableDebugExceptions(bool value);

  external String get endpointUrl;
  external set endpointUrl(String value);

  external dynamic get extensionConfig;
  external set extensionConfig(dynamic value);

  external List get extensions;
  external set extensions(List value);

  external List get channels;
  external set channels(List value);

  external bool get disableInstrumentaionKeyValidation;
  external set disableInstrumentaionKeyValidation(bool value);

  external bool get enablePerfMgr;
  external set enablePerfMgr(bool value);

  external bool get perfEvtsSendAll;
  external set perfEvtsSendAll(bool value);

  external int get idLength;
  external set idLength(int value);
}
