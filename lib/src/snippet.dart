import 'config.dart';

typedef void InitializationCallback();

/// An Application Insights configuration snippet.
class Snippet {
  Config config;
  List<InitializationCallback> queue = [];

  Map<String, dynamic> toMap() {
    return {
      'queue': queue,
      'config': config.jsHandle
    };
  }
}