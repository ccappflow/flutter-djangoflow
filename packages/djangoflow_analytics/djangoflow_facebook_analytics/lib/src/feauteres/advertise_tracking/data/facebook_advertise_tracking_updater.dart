import 'package:analytics/analytics.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/advertise_tracking/data/facebook_advertise_tracking_event.dart';

class FacebookAdvertiseTrackingUpdater implements AnalyticActionPerformer<FacebookAdvertiseTrackingEvent> {
  FacebookAdvertiseTrackingUpdater(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;

  @override
  void performAction(FacebookAdvertiseTrackingEvent action) {
    _facebookAppEvents.setAdvertiserTracking(enabled: action.enabled);
  }
}
