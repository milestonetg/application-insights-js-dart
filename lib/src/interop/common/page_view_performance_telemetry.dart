part of '../interop.dart';

/// AppInsightsCommon IPageViewPerformanceTelemetry
@anonymous
@JS()
class PageViewPerformanceTelemetry extends PartC {
  external String get name;
  external set name(String value);

  external String get uri;
  external set uri(String value);

  external String get perfTotal;
  external set perfTotal(String value);

  external String get duration;
  external set duration(String value);

  external String get networkConnect;
  external set networkConnect(String value);

  external String get sentRequest;
  external set sentRequest(String value);

  external String get receivedResponse;
  external set receivedResponse(String value);

  external String get domProcessing;
  external set domProcessing(String value);
}
