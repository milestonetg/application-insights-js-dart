part of '../../application_insights_js.dart';

mixin Configuration {
  String get instrumentationKey => _jsObject.instrumentationKey;

  /// Instrumentation key of resource.
  ///
  /// Either this or [connectionString] must be specified.
  set instrumentationKey(String value) => _jsObject.instrumentationKey = value;

  String get connectionString => _jsObject.connectionString;

  /// Connection string of resource.
  ///
  /// Either this or [instrumentationKey] must be specified.
  set connectionString(String value) => _jsObject.connectionString = value;

  num get diagnosticLogInterval => _jsObject.diagnosticLogInterval;

  /// Polling interval (in ms) for internal logging queue.
  set diagnosticLogInterval(num value) =>
      _jsObject.diagnosticLogInterval = value;

  int get maxMessageLimit => _jsObject.maxMessageLimit;

  /// Maximum number of iKey transmitted logging telemetry per page view.
  set maxMessageLimit(int value) => _jsObject.maxMessageLimit = value;

  int get loggingLevelConsole => _jsObject.loggingLevelConsole;

  /// Console logging level. All logs with a severity level higher
  /// than the configured level will be printed to console. Otherwise
  /// they are suppressed. ie Level 2 will print both CRITICAL and
  /// WARNING logs to console, level 1 prints only CRITICAL.
  ///
  /// Note: Logs sent as telemetry to instrumentation key will also
  /// be logged to console if their severity meets the configured
  /// loggingConsoleLevel.
  ///
  /// 0: ALL console logging off
  /// 1: logs to console: severity >= CRITICAL
  /// 2: logs to console: severity >= WARNING
  set loggingLevelConsole(int value) => _jsObject.loggingLevelConsole = value;

  int get loggingLevelTelemetry => _jsObject.loggingLevelTelemetry;

  /// Telemtry logging level to instrumentation key. All logs with a severity
  /// level higher than the configured level will sent as telemetry data to
  /// the configured instrumentation key.
  ///
  /// 0: ALL iKey logging off
  /// 1: logs to iKey: severity >= CRITICAL
  /// 2: logs to iKey: severity >= WARNING
  set loggingLevelTelemetry(int value) =>
      _jsObject.loggingLevelTelemetry = value;

  bool get enableDebugExceptions => _jsObject.enableDebugExceptions;

  /// If enabled, uncaught exceptions will be thrown to help with debugging.
  set enableDebugExceptions(bool value) =>
      _jsObject.enableDebugExceptions = value;

  String get endpointUrl => _jsObject.endpointUrl;

  /// Endpoint where telemetry data is sent.
  set endpointUrl(String value) => _jsObject.endpointUrl = value;

  Map<String, dynamic> get extensionConfig =>
      jsDecodeMap<dynamic>(_jsObject.extensionConfig);

  /// Extension configs loaded in SDK.
  set extensionConfig(Map<String, dynamic> value) =>
      _jsObject.extensionConfig = jsEncode(value);

  // TODO: extensions, channels

  bool get disableInstrumentaionKeyValidation =>
      _jsObject.disableInstrumentaionKeyValidation;

  /// Flag that disables the Instrumentation Key validation.
  set disableInstrumentaionKeyValidation(bool value) =>
      _jsObject.disableInstrumentaionKeyValidation = value;

  bool get enablePerfMgr => _jsObject.enablePerfMgr;

  /// (Optional) When enabled this will create local perfEvents based on
  /// sections of the code that have been instrumented to emit perfEvents
  /// (via the doPerf()) when this is enabled.
  ///
  /// This can be used to identify performance issues within the SDK, the way
  /// you are using it or optionally your own instrumented code. The provided
  /// IPerfManager implementation does NOT send any additional telemetry events
  /// to the server it will only fire the new perfEvent() on the
  /// INotificationManager which you can listen to. This also does not use the
  /// window.performance API, so it will work in environments where this API is
  /// not supported.
  set enablePerfMgr(bool value) => _jsObject.enablePerfMgr = value;

  bool get perfEvtsSendAll => _jsObject.perfEvtsSendAll;

  /// (Optional) Fire every single performance event not just the top level root
  /// performance event.
  ///
  /// Defaults to false.
  set perfEvtsSendAll(bool value) => _jsObject.perfEvtsSendAll = value;

  int get idLength => _jsObject.idLength;

  /// (Optional) Identifies the default length used to generate random session
  /// and user id's if non currently exists for the user / session.
  ///
  /// Defaults to 22, previous default value was 5, if you need to keep the
  /// previous maximum length you should set this value to 5.
  set idLength(int value) => _jsObject.idLength = value;

  interop.SnippetConfig get _jsObject;
}
