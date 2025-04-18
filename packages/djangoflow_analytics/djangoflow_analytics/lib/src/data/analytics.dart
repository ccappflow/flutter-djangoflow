import 'package:analytics/analytics.dart';
import 'package:flutter/foundation.dart';

/// An [AnalyticService] that performs [AnalyticAction]s.
class DjangoflowAnalytics extends AnalyticService {
  DjangoflowAnalytics._internal() : super.empty();
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  bool _hasInitialized = false;

  @visibleForTesting
  static DjangoflowAnalytics get testInstance => DjangoflowAnalytics._internal();

  void init() {
    _hasInitialized = true;
  }

  final _performers = <AnalyticActionPerformer<AnalyticAction>>{};

  /// Returns true if the DjangoflowAnalytics has been initialized.
  bool get hasInitialized => _hasInitialized;

  /// Returns a list of all the performers.
  List<AnalyticActionPerformer> get performers => _performers.toList();

  /// Perform [action] with all the performers.
  @override
  void performAction(AnalyticAction action) {
    if (hasInitialized) {
      for (final performer in _performers) {
        performer.performAction(action);
      }
    }
  }

  /// Add [performer]s to the service.
  void addAllActionPerformers(
    List<AnalyticActionPerformer<AnalyticAction>> performers,
  ) =>
      _performers.addAll(performers);
}
