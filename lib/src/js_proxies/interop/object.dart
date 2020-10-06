@JS()
library object;

import 'package:js/js.dart';

@JS('Object')
class Object {
  external Object();

  external static List keys(dynamic object);
}
