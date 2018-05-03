import 'dart:js' as js;

class MapJsProxy<TKey, TValue> {
  /// Returns the underlying JavaScript object.
  js.JsObject get jsHandle => _handle;

  final js.JsObject _handle;

  MapJsProxy(js.JsObject mapHandle)
    : _handle = mapHandle;

  TValue operator [](TKey key) => _handle[key];

  void operator []=(TKey key, TValue value) => _handle[key] = value;

  bool containsKey(TKey key) {
    return _handle.hasProperty(key);
  }
}