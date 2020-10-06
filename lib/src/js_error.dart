part of '../application_insights_js.dart';

/// Represents a JavaScript Error object.
class JsError {
  /// Sets the error message.
  set message(String value) => _jsObject.message = value;

  /// The error message.
  String get message => _jsObject.message;

  /// Sets the error type name.
  set name(String value) => _jsObject.name = value;

  /// The error type name.
  String get name => _jsObject.name;

  /// Sets the error stack trace.
  set stack(String value) => _jsObject.stack = value;

  /// The error stack trace.
  String get stack => _jsObject.stack;

  final interop.JsError _jsObject;

  /// Creates a new JavaScript Error with the given [message].
  JsError([String message]) : _jsObject = interop.JsError(message);

  /// Creates a new JavaScript Error with the given type [name] and [message].
  JsError.named(String name, [String message])
      : _jsObject = interop.JsError(message)..name = name;

  /// Creates a new JavaScript Error object from a Dart [exception] and
  /// optionally its [stackTrace].
  factory JsError.fromException(Exception exception, [StackTrace stackTrace]) {
    final jsError =
        JsError.named(exception.runtimeType.toString(), exception.toString());

    jsError.stack = stackTrace?.toString();

    return jsError;
  }

  JsError._fromJsObject(this._jsObject);
}
