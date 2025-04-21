import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelUserIdentityUpdater implements AnalyticActionPerformer<UpdateMixpanelUserIdentity> {
  MixpanelUserIdentityUpdater(this._mixpanel);
  final Mixpanel _mixpanel;

  @override
  void performAction(UpdateMixpanelUserIdentity action) {
    if (action.id != null) {
      _mixpanel.identify(action.id!).then((_) {
        if (action.userProperties != null && action.userProperties!.isNotEmpty) {
          final people = _mixpanel.getPeople();
          action.userProperties!.forEach((key, value) {
            people.set(key, value);
          });
        }
      });
    } else {
      _mixpanel.reset();
    }
  }
}
