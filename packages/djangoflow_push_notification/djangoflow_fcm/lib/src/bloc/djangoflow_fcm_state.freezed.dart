// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_fcm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DjangoflowFCMState {
  RemoteMessage? get remoteMessage => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  AuthorizationStatus? get notificationAuthorizationStatus =>
      throw _privateConstructorUsedError;
  bool? get remoteMessageOpenedApp => throw _privateConstructorUsedError;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DjangoflowFCMStateCopyWith<DjangoflowFCMState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowFCMStateCopyWith<$Res> {
  factory $DjangoflowFCMStateCopyWith(
          DjangoflowFCMState value, $Res Function(DjangoflowFCMState) then) =
      _$DjangoflowFCMStateCopyWithImpl<$Res, DjangoflowFCMState>;
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class _$DjangoflowFCMStateCopyWithImpl<$Res, $Val extends DjangoflowFCMState>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  _$DjangoflowFCMStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_value.copyWith(
      remoteMessage: freezed == remoteMessage
          ? _value.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _value.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _value.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DjangoflowFCMStateImplCopyWith<$Res>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  factory _$$DjangoflowFCMStateImplCopyWith(_$DjangoflowFCMStateImpl value,
          $Res Function(_$DjangoflowFCMStateImpl) then) =
      __$$DjangoflowFCMStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class __$$DjangoflowFCMStateImplCopyWithImpl<$Res>
    extends _$DjangoflowFCMStateCopyWithImpl<$Res, _$DjangoflowFCMStateImpl>
    implements _$$DjangoflowFCMStateImplCopyWith<$Res> {
  __$$DjangoflowFCMStateImplCopyWithImpl(_$DjangoflowFCMStateImpl _value,
      $Res Function(_$DjangoflowFCMStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_$DjangoflowFCMStateImpl(
      remoteMessage: freezed == remoteMessage
          ? _value.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _value.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _value.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$DjangoflowFCMStateImpl implements _DjangoflowFCMState {
  const _$DjangoflowFCMStateImpl(
      {this.remoteMessage,
      this.token,
      this.notificationAuthorizationStatus,
      this.remoteMessageOpenedApp});

  @override
  final RemoteMessage? remoteMessage;
  @override
  final String? token;
  @override
  final AuthorizationStatus? notificationAuthorizationStatus;
  @override
  final bool? remoteMessageOpenedApp;

  @override
  String toString() {
    return 'DjangoflowFCMState(remoteMessage: $remoteMessage, token: $token, notificationAuthorizationStatus: $notificationAuthorizationStatus, remoteMessageOpenedApp: $remoteMessageOpenedApp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DjangoflowFCMStateImpl &&
            (identical(other.remoteMessage, remoteMessage) ||
                other.remoteMessage == remoteMessage) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.notificationAuthorizationStatus,
                    notificationAuthorizationStatus) ||
                other.notificationAuthorizationStatus ==
                    notificationAuthorizationStatus) &&
            (identical(other.remoteMessageOpenedApp, remoteMessageOpenedApp) ||
                other.remoteMessageOpenedApp == remoteMessageOpenedApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteMessage, token,
      notificationAuthorizationStatus, remoteMessageOpenedApp);

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DjangoflowFCMStateImplCopyWith<_$DjangoflowFCMStateImpl> get copyWith =>
      __$$DjangoflowFCMStateImplCopyWithImpl<_$DjangoflowFCMStateImpl>(
          this, _$identity);
}

abstract class _DjangoflowFCMState implements DjangoflowFCMState {
  const factory _DjangoflowFCMState(
      {final RemoteMessage? remoteMessage,
      final String? token,
      final AuthorizationStatus? notificationAuthorizationStatus,
      final bool? remoteMessageOpenedApp}) = _$DjangoflowFCMStateImpl;

  @override
  RemoteMessage? get remoteMessage;
  @override
  String? get token;
  @override
  AuthorizationStatus? get notificationAuthorizationStatus;
  @override
  bool? get remoteMessageOpenedApp;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DjangoflowFCMStateImplCopyWith<_$DjangoflowFCMStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
