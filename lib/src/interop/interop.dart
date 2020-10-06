@JS('Microsoft.ApplicationInsights')
library interop;

import 'package:js/js.dart';

import 'js_error.dart';

export 'js_error.dart';

part 'common/dependency_telemetry.dart';
part 'common/event_telemetry.dart';
part 'common/exception_telemetry.dart';
part 'common/metric_telemetry.dart';
part 'common/page_view_performance_telemetry.dart';
part 'common/page_view_telemetry.dart';
part 'common/part_c.dart';
part 'common/trace_telemetry.dart';
part 'core/telemetry_item.dart';
part 'application_insights.dart';
part 'snippet_config.dart';
part 'snippet.dart';
