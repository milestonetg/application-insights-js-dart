import 'dart:js' as js;

import 'domain.dart';

class Data {
  /// Returns the telemetry data type. 
  /// If telemetry data is derived straight from this, this should be null.
  String get baseType => _handle['baseType'];

  /// Returns the actual underlying data.
  Domain get baseData {
    final js.JsObject domainHandle = _handle['baseData'];
    return new Domain.fromExistingHandle(domainHandle);
  }

  /// Gets the underlying JavaScript object.
  js.JsObject get jsHandle => _handle;

  final js.JsObject _handle;

  Data._(this._handle);

  factory Data.fromExistingHandle(js.JsObject handle) {
    return new Data._(handle);
  }
}