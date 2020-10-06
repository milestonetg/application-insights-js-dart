part of '../../application_insights_js.dart';

mixin PartC {
  /// Property bag to contain additional custom properties (Part C).
  set properties(Map<String, dynamic> value) =>
      _jsObject.properties = jsEncode(value);
  Map<String, dynamic> get properties =>
      jsDecodeMap<dynamic>(_jsObject.properties);

  interop.PartC get _jsObject;
}
