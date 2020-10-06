part of '../interop.dart';

/// AppInsightsCommon IPageViewTelemetry
@anonymous
@JS()
class PageViewTelemetry extends PartC {
  external String get name;
  external set name(String value);

  external String get uri;
  external set uri(String value);

  external String get refUri;
  external set refUri(String value);

  external String get pageType;
  external set pageType(String value);

  external bool get isLoggedIn;
  external set isLoggedIn(bool value);
}
