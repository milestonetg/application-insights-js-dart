part of '../../application_insights_js.dart';

class TelemetryItem {
  /// CommonSchema Version of this SDK.
  String get ver => _jsObject.ver;
  set ver(String value) => _jsObject.ver = value;

  /// Unique name of the telemetry item.
  String get name => _jsObject.name;
  set name(String value) => _jsObject.name = value;

  /// Timestamp when item was sent.
  String get time => _jsObject.time;
  set time(String value) => _jsObject.time = value;

  /// Identifier of the resource that uniquely identifies which resource data is
  /// sent to.
  String get iKey => _jsObject.iKey;
  set iKey(String value) => _jsObject.iKey = value;

  /// System context properties of the telemetry item, example: ip address,
  /// city, etc.
  Map<String, dynamic> get ext => jsDecodeMap<dynamic>(_jsObject.ext);
  set ext(Map<String, dynamic> value) => _jsObject.ext = jsEncode(value);

  /// System context property extensions that are not global (not in ctx).
  Map<String, dynamic> get tags => jsDecodeMap<dynamic>(_jsObject.tags);
  set tags(Map<String, dynamic> value) => _jsObject.tags = jsEncode(value);

  /// Custom data.
  Map<String, dynamic> get data => jsDecodeMap<dynamic>(_jsObject.data);
  set data(Map<String, dynamic> value) => _jsObject.data = jsEncode(value);

  /// Telemetry type used for part B.
  String get baseType => _jsObject.baseType;
  set baseType(String value) => _jsObject.baseType = value;

  /// Based on schema for part B.
  Map<String, dynamic> get baseData => jsDecodeMap<dynamic>(_jsObject.baseData);
  set baseData(Map<String, dynamic> value) =>
      _jsObject.baseData = jsEncode(value);

  final interop.TelemetryItem _jsObject;

  TelemetryItem() : _jsObject = interop.TelemetryItem();

  TelemetryItem._fromJsObject(this._jsObject);
}
