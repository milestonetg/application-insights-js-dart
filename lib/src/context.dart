import 'dart:js' as js;

/// An error which is thrown when global `Microsoft.ApplicationInsights` JavaScript object could not be found.
/// 
/// This usually indicates that ai.js was not loaded before the Dart application,
/// or that ai.js was never referenced on the page.
class ApplicationInsightsJsMissingError extends Error {
  final String message = 'Could not locate the global Application Insights JavaScript SDK object. Are you missing a <script> tag for ai.js?';

  @override
  String toString() {
    return 'ApplicationInsightsJsMissingError: $message';
  }
}

js.JsObject _aiHandle;

js.JsObject get aiHandle {
  if (_aiHandle == null) {
    final js.JsObject microsoftHandle = js.context['Microsoft'];

    if (microsoftHandle == null) {
      throw new ApplicationInsightsJsMissingError();
    }

    _aiHandle = microsoftHandle['ApplicationInsights'];

    if (_aiHandle == null) {
      throw new ApplicationInsightsJsMissingError();
    }
  }

  return _aiHandle;
} 