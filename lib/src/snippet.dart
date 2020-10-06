part of '../application_insights_js.dart';

/// An Application Insights configuration snippet.
class Snippet {
  SnippetConfig get config => _jsObject.config == null
      ? null
      : SnippetConfig._fromJsObject(_jsObject.config);

  /// Sets the configuration of the Application Insights telemetry.
  set config(SnippetConfig value) => _jsObject.config = value?._jsObject;

  final interop.Snippet _jsObject;

  Snippet({SnippetConfig config}) : _jsObject = interop.Snippet() {
    this.config = config;
  }
}
