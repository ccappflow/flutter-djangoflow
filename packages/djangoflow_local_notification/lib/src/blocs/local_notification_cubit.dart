import 'package:djangoflow_bloc_extensions/djangoflow_bloc_extensions.dart';
import 'package:djangoflow_local_notification/src/local_notification_initializer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';

import 'package:djangoflow_local_notification/src/blocs/local_notification_state.dart';
export 'local_notification_state.dart';

typedef PresentableNotificationCallBack = Future<NotificationDetails?> Function();

class LocalNotificationCubit extends Cubit<LocalNotificationState> with SafeEmitMixin<LocalNotificationState> {
  LocalNotificationCubit._internal() : super(const LocalNotificationState());
  static LocalNotificationCubit get instance => _instance;
  static final LocalNotificationCubit _instance = LocalNotificationCubit._internal();

  NotificationInitializer? notificationInitializer;

  Future<bool?> initialize({
    required NotificationInitializer notificationInitializer,
    required List<PushActionCategory> pushActions,
    required String defaultAndroidNotificationIcon,
    bool? forceInitialize,
  }) async {
    this.notificationInitializer = notificationInitializer;
    if (this.notificationInitializer != null) {
      return await this.notificationInitializer?.initialize(
            pushActions: pushActions,
            defaultAndroidNotificationIcon: defaultAndroidNotificationIcon,
            forceInitialize: forceInitialize,
            onDidReceiveNotificationResponse: (details) {
              emit(
                state.copyWith(
                  notificationResponse: details,
                ),
              );
            },
          );
    } else {
      return false;
    }
  }

  Future<void> displayNotification({
    required PresentableNotificationCallBack notificationDetailsBuilder,
    required int id,
    String? title,
    String? body,
    String? payload,
  }) async {
    final notificationDetails = await notificationDetailsBuilder();
    if (notificationInitializer?.flutterLocalNotificationsPlugin == null) {
      throw Exception('NotificationInitializer is not initialized');
    }
    await notificationInitializer?.flutterLocalNotificationsPlugin?.show(
      id,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }

  Future<NotificationAppLaunchDetails?> checkAndUpdateAppLaunchNotification() async {
    final intialNotificationTap =
        await notificationInitializer?.flutterLocalNotificationsPlugin?.getNotificationAppLaunchDetails();
    if (intialNotificationTap?.didNotificationLaunchApp == true) {
      emit(
        state.copyWith(
          notificationResponse: intialNotificationTap?.notificationResponse,
        ),
      );

      return intialNotificationTap;
    } else {
      return null;
    }
  }

  Future<void> cancelNotification(String notificationId, {String? tag}) async {
    await notificationInitializer?.flutterLocalNotificationsPlugin?.cancel(notificationId.hashCode, tag: tag);
  }
}
