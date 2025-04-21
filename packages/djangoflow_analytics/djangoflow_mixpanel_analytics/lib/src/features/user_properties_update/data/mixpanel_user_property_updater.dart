import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/user_properties_update/data/mixpanel_updatable_user_property.dart';

class MixpanelUserPropertyUpdater implements AnalyticActionPerformer<MixpanelUpdatableUserProperty> {
  MixpanelUserPropertyUpdater(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelUserPropertyCutter _userPropertyCutter = MixpanelUserPropertyCutter();

  @override
  void performAction(MixpanelUpdatableUserProperty action) {
    final params = {
      _userPropertyCutter.trimName(action.key):
          action.value != null ? _userPropertyCutter.trimValue(action.value!) : action.value,
    };

    _mixpanel.registerSuperProperties(params);
  }
}
