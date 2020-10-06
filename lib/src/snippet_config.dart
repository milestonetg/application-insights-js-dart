part of '../application_insights_js.dart';

/// An Application Insights instance configuration.
class SnippetConfig with Configuration, Config {
  @override
  final interop.SnippetConfig _jsObject;

  SnippetConfig() : _jsObject = interop.SnippetConfig();

  SnippetConfig._fromJsObject(this._jsObject);
}
