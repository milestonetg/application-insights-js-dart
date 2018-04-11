import 'dart:js' as js;

import 'config.dart';

/// A
class AppInsightsInstance {
  Config get config {
    final js.JsObject configHandle = _handle['config'];
    return new Config.fromExistingHandle(configHandle);
  }

  final js.JsObject _handle;

  AppInsightsInstance._(this._handle);

  factory AppInsightsInstance.fromExistingHandle(js.JsObject handle) {
    return new AppInsightsInstance._(handle);
  }

  /// Logs that a page or other item was viewed.
  /// 
  /// [name] - The string you used as the name in [startTrackPage]. Defaults to the document title.
  /// 
  /// [url] - A relative or absolute URL that identifies the page or other item. Defaults to the window location.
  /// 
  /// [properties] - Additional data used to filter pages and metrics in the portal. Defaults to empty.
  /// 
  /// [measurements] - Metrics associated with this page, displayed in Metrics Explorer on the portal. Defaults to empty.
  /// 
  /// [duration] - The number of milliseconds it took to load the page. Defaults to undefined. 
  /// If set to default value, page load time is calculated internally.
  void trackPageView({String name, String url, Map<String, String> properties, Map<String, num> measurements, int duration}) {
    _handle.callMethod('trackPageView', [
      name,
      url,
      properties != null ? new js.JsObject.jsify(properties) : null,
      measurements != null ? new js.JsObject.jsify(measurements) : null,
      duration
    ]);
  }
}