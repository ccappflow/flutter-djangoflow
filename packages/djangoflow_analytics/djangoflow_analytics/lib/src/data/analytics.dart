import 'package:analytics/analytics.dart';
import 'package:flutter/foundation.dart';

/// An [AnalyticService] that performs [AnalyticAction]s.
class DjangoflowAnalytics extends AnalyticService {
  DjangoflowAnalytics._internal() : super.empty();
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  @visibleForTesting
  static DjangoflowAnalytics get testInstance => DjangoflowAnalytics._internal();

  final _strategies = <AnalyticStrategy<AnalyticAction>>{};

  /// Returns a list of all the performers.
  List<AnalyticStrategy> get performers => _strategies.toList();

  /// Add [performer]s to the service.
  void addAllStrategies(List<AnalyticStrategy<AnalyticAction>> strategies) => _strategies.addAll(strategies);
}
