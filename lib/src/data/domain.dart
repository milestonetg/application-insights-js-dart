import 'dart:js' as js;

import '../utils/map_js_proxy.dart';

// TODO: Make abstract and create implementations

class Domain {
  /// Gets the schema version.
  num get version => _handle['ver'];

  /// A collection of custom properties.
  final MapJsProxy<String, String> properties;

  /// Gets the underlying JavaScript object.
  js.JsObject get jsHandle => _handle;

  final js.JsObject _handle;

  Domain._(this._handle)
    : properties = new MapJsProxy(_handle['properties'] ??= new js.JsObject.jsify({}));

  factory Domain.fromExistingHandle(js.JsObject handle) {
    return new Domain._(handle);
  }
}