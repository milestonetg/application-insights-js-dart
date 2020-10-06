part of '../../application_insights_js.dart';

class PageViewTelemetryProperties extends JsObjectMapProxyBase<dynamic> {
  /// The number of milliseconds it took to load the page.
  ///
  /// Defaults to undefined.
  /// If set to default value, page load time is calculated internally.
  set duration(num value) => this['duration'] = value;
  num get duration => this['duration'];

  PageViewTelemetryProperties({num duration, Map<String, dynamic> properties})
      : super(properties) {
    this.duration = duration ?? properties['duration'];
  }

  PageViewTelemetryProperties._fromJsObject(JsObjectMapProxy<dynamic> map)
      : super.fromJsObject(map);
}

class PageViewTelemetry with PartC {
  /// The string you used as the name in `startTrackPage`.
  ///
  /// Defaults to the document title.
  set name(String value) => _jsObject.name = value;
  String get name => _jsObject.name;

  /// A relative or absolute URL that identifies the page or other item.
  ///
  /// Defaults to the window location.
  set uri(String value) => _jsObject.uri = value;
  String get uri => _jsObject.uri;

  /// The URL of the source page where current page is loaded from.
  set refUri(String value) => _jsObject.refUri = value;
  String get refUri => _jsObject.refUri;

  /// Page type.
  set pageType(String value) => _jsObject.pageType = value;
  String get pageType => _jsObject.pageType;

  /// Is the user logged in.
  set isLoggedIn(bool value) => _jsObject.isLoggedIn = value;
  bool get isLoggedIn => _jsObject.isLoggedIn;

  @override
  set properties(Map<String, dynamic> value) =>
      _jsObject.properties = jsEncode(value);

  @override
  PageViewTelemetryProperties get properties => _jsObject.properties == null
      ? null
      : PageViewTelemetryProperties._fromJsObject(_jsObject.properties);

  @override
  final interop.PageViewTelemetry _jsObject;

  PageViewTelemetry() : _jsObject = interop.PageViewTelemetry();
}
