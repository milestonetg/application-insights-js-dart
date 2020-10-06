part of '../../application_insights_js.dart';

class PageViewPerformanceTelemetry with PartC {
  /// The name of the page.
  ///
  /// Defaults to the document title.
  set name(String value) => _jsObject.name = value;
  String get name => _jsObject.name;

  /// A relative or absolute URL that identifies the page or other item.
  ///
  /// Defaults to the window location.
  set uri(String value) => _jsObject.uri = value;
  String get uri => _jsObject.uri;

  /// Performance total in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff"`.
  ///
  /// This is total duration in timespan format.
  set perfTotal(String value) => _jsObject.perfTotal = value;
  String get perfTotal => _jsObject.perfTotal;

  /// Performance total in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff"`.
  ///
  /// This represents the total page load time.
  set duration(String value) => _jsObject.duration = value;
  String get duration => _jsObject.duration;

  /// Sent request time in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff`.
  set networkConnect(String value) => _jsObject.networkConnect = value;
  String get networkConnect => _jsObject.networkConnect;

  /// Sent request time in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff`.
  set sentRequest(String value) => _jsObject.sentRequest = value;
  String get sentRequest => _jsObject.sentRequest;

  /// Received response time in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff`.
  set receivedResponse(String value) => _jsObject.receivedResponse = value;
  String get receivedResponse => _jsObject.receivedResponse;

  /// DOM processing time in TimeSpan 'G' (general long) format:
  /// `d:hh:mm:ss.fffffff`.
  set domProcessing(String value) => _jsObject.domProcessing = value;
  String get domProcessing => _jsObject.domProcessing;

  @override
  final interop.PageViewPerformanceTelemetry _jsObject;

  PageViewPerformanceTelemetry()
      : _jsObject = interop.PageViewPerformanceTelemetry();
}
