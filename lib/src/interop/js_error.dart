@JS()
library js_error;

import 'package:js/js.dart';

@JS('Error')
class JsError {
  external JsError([String message]);

  external String get message;
  external set message(String value);

  external String get name;
  external set name(String value);

  external String get stack;
  external set stack(String value);
}
