import 'dart:js' as js;

import 'data/data.dart';

class Envelope {
  Data get data {
    final js.JsObject dataHandle = _handle['data'];
    return new Data.fromExistingHandle(dataHandle);
  }

  final js.JsObject _handle;

  Envelope._(this._handle);

  factory Envelope.fromExistingHandle(js.JsObject handle) {
    return new Envelope._(handle);
  }
}