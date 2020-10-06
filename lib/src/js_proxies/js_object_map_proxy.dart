part of 'js_proxies.dart';

/// Provides a Dart `Map` interface for a proxied JavaScript Object.
///
/// Will automatically convert `List`s and `Map`s to JS Arrays and JS Objects
/// respectively and vice versa without copying the underlying JS value (e.g.
/// modifying the "proxied" JS Array/Object will be reflected in JS and vice versa).
class JsObjectMapProxy<V> with MapMixin<String, V> {
  final dynamic _jsObject;

  JsObjectMapProxy() : this._fromJsObject(interop.Object());

  JsObjectMapProxy._fromJsObject(this._jsObject);

  @override
  Iterable<String> get keys => interop.Object.keys(_jsObject).cast<String>();

  @override
  V operator [](Object key) => jsDecode(getProperty(_jsObject, key));

  @override
  void operator []=(String key, V value) =>
      setProperty(_jsObject, key, jsEncode(value));

  @override
  void clear() {
    for (final key in keys) {
      interop.Reflect.deleteProperty(_jsObject, key);
    }
  }

  @override
  V remove(Object key) {
    final value = this[key];
    interop.Reflect.deleteProperty(_jsObject, key);

    return value;
  }
}

/// A base implementation of [JsObjectMapProxy] that can be used for extending
/// a [Map]-based property with additional typed properties.
class JsObjectMapProxyBase<V> extends JsObjectMapProxy<V> {
  final JsObjectMapProxy<V> _map;

  JsObjectMapProxyBase([Map<String, V> existing])
      : _map = JsObjectMapProxy<V>() {
    if (existing != null) {
      addAll(existing);
    }
  }

  JsObjectMapProxyBase.fromJsObject(this._map);

  @override
  V operator [](Object key) => _map[key];

  @override
  void operator []=(String key, V value) => _map[key] = value;

  @override
  void clear() => _map.clear();

  @override
  Iterable<String> get keys => _map.keys;

  @override
  V remove(Object key) => _map.remove(key);
}
