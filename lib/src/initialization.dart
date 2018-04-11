import 'dart:js' as js;

import 'context.dart';
import 'instance.dart';
import 'snippet.dart';

/// An Application Insights "initialization" object.
class Initialization {
  final js.JsObject _handle;

  Initialization._(this._handle);

  factory Initialization(Snippet snippet) {
    // Convert the snippet to a JavaScript object
    final Map<String, dynamic> snippetMap = snippet.toMap();
    final js.JsObject snippetJsObject = new js.JsObject.jsify(snippetMap);

    // Instantiate an Initialization object
    final js.JsObject handle = new js.JsObject(aiHandle['Initialization'], [snippetJsObject]);

    return new Initialization._(handle);
  }

  AppInsightsInstance loadAppInsights() {
    final js.JsObject appInsightsHandle = _handle.callMethod('loadAppInsights');

    return new AppInsightsInstance.fromExistingHandle(appInsightsHandle);
  }
}