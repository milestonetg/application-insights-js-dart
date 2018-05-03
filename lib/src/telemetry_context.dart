import 'dart:js' as js;

import 'envelope.dart';

typedef bool TelemetryInitializer(Envelope envelope);

class TelemetryContext {
  final js.JsObject _handle;

  TelemetryContext._(this._handle);

  factory TelemetryContext.fromExistingHandle(js.JsObject handle) {
    return new TelemetryContext._(handle);
  }

  /// Adds a telemetry initializer to the collection. 
  /// 
  /// Telemetry initializers will be called one by one, 
  /// in the order they were added, before the telemetry item is pushed for sending. 
  /// 
  /// If one of the telemetry initializers returns false or throws an error then the telemetry item will not be sent. 
  /// 
  /// If it returns true or returns null the event will be passed to the next telemetry initializer and
  /// sent (if not rejected by other initializers). 
  void addTelemetryInitializer(TelemetryInitializer initializer) {
    if (initializer == null) throw new ArgumentError.notNull('initializer');

    _handle.callMethod('addTelemetryInitializer', [
      js.allowInterop((js.JsObject jsEnvelope) {
        final Envelope envelope = new Envelope.fromExistingHandle(jsEnvelope);

        return initializer(envelope);
      })
    ]);
  }
}