import 'package:analytics/analytics.dart';
import 'package:djangoflow_analytics/djangoflow_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'analytics_test.mocks.dart';

class TestAnalyticsAction implements AnalyticAction {}

@GenerateNiceMocks([MockSpec<AnalyticActionPerformer<TestAnalyticsAction>>()])
void main() {
  group('DjangoflowAnalytics', () {
    test('init sets _hasInitialized to true', () {
      final analytics = DjangoflowAnalytics.testInstance;

      analytics.init();
      expect(analytics.hasInitialized, true);
    });

    test('performAction does not call perform if _hasInitialized is false', () {
      final analytics = DjangoflowAnalytics.testInstance;

      final action = TestAnalyticsAction();
      final performer = MockAnalyticActionPerformer();
      analytics.addAllActionPerformers([performer]);

      analytics.performAction(action);
      verifyNever(performer.performAction(action));
    });

    test('addAllActionPerformers adds performers to _performers', () {
      final analytics = DjangoflowAnalytics.testInstance;
      final performer1 = MockAnalyticActionPerformer();
      final performer2 = MockAnalyticActionPerformer();

      analytics.addAllActionPerformers([performer1, performer2]);
      expect(analytics.performers, [performer1, performer2]);
    });
  });
}
