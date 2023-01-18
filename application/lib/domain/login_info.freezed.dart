// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) {
  return _LoginInfo.fromJson(json);
}

/// @nodoc
mixin _$LoginInfo {
  @JsonKey(name: 'username')
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInfoCopyWith<LoginInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInfoCopyWith<$Res> {
  factory $LoginInfoCopyWith(LoginInfo value, $Res Function(LoginInfo) then) =
      _$LoginInfoCopyWithImpl<$Res, LoginInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String email, String password, String uuid});
}

/// @nodoc
class _$LoginInfoCopyWithImpl<$Res, $Val extends LoginInfo>
    implements $LoginInfoCopyWith<$Res> {
  _$LoginInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginInfoCopyWith<$Res> implements $LoginInfoCopyWith<$Res> {
  factory _$$_LoginInfoCopyWith(
          _$_LoginInfo value, $Res Function(_$_LoginInfo) then) =
      __$$_LoginInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String email, String password, String uuid});
}

/// @nodoc
class __$$_LoginInfoCopyWithImpl<$Res>
    extends _$LoginInfoCopyWithImpl<$Res, _$_LoginInfo>
    implements _$$_LoginInfoCopyWith<$Res> {
  __$$_LoginInfoCopyWithImpl(
      _$_LoginInfo _value, $Res Function(_$_LoginInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? uuid = null,
  }) {
    return _then(_$_LoginInfo(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginInfo implements _LoginInfo {
  const _$_LoginInfo(
      {@JsonKey(name: 'username') required this.email,
      required this.password,
      required this.uuid});

  factory _$_LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LoginInfoFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String email;
  @override
  final String password;
  @override
  final String uuid;

  @override
  String toString() {
    return 'LoginInfo(email: $email, password: $password, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginInfoCopyWith<_$_LoginInfo> get copyWith =>
      __$$_LoginInfoCopyWithImpl<_$_LoginInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginInfoToJson(
      this,
    );
  }
}

abstract class _LoginInfo implements LoginInfo {
  const factory _LoginInfo(
      {@JsonKey(name: 'username') required final String email,
      required final String password,
      required final String uuid}) = _$_LoginInfo;

  factory _LoginInfo.fromJson(Map<String, dynamic> json) =
      _$_LoginInfo.fromJson;

  @override
  @JsonKey(name: 'username')
  String get email;
  @override
  String get password;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_LoginInfoCopyWith<_$_LoginInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginInfoResponse _$LoginInfoResponseFromJson(Map<String, dynamic> json) {
  return _LoginInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginInfoResponse {
  String get success => throw _privateConstructorUsedError;
  LoginInfo get loginInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInfoResponseCopyWith<LoginInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInfoResponseCopyWith<$Res> {
  factory $LoginInfoResponseCopyWith(
          LoginInfoResponse value, $Res Function(LoginInfoResponse) then) =
      _$LoginInfoResponseCopyWithImpl<$Res, LoginInfoResponse>;
  @useResult
  $Res call({String success, LoginInfo loginInfo});

  $LoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class _$LoginInfoResponseCopyWithImpl<$Res, $Val extends LoginInfoResponse>
    implements $LoginInfoResponseCopyWith<$Res> {
  _$LoginInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? loginInfo = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      loginInfo: null == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as LoginInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginInfoCopyWith<$Res> get loginInfo {
    return $LoginInfoCopyWith<$Res>(_value.loginInfo, (value) {
      return _then(_value.copyWith(loginInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginInfoResponseCopyWith<$Res>
    implements $LoginInfoResponseCopyWith<$Res> {
  factory _$$_LoginInfoResponseCopyWith(_$_LoginInfoResponse value,
          $Res Function(_$_LoginInfoResponse) then) =
      __$$_LoginInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String success, LoginInfo loginInfo});

  @override
  $LoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class __$$_LoginInfoResponseCopyWithImpl<$Res>
    extends _$LoginInfoResponseCopyWithImpl<$Res, _$_LoginInfoResponse>
    implements _$$_LoginInfoResponseCopyWith<$Res> {
  __$$_LoginInfoResponseCopyWithImpl(
      _$_LoginInfoResponse _value, $Res Function(_$_LoginInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? loginInfo = null,
  }) {
    return _then(_$_LoginInfoResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      loginInfo: null == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as LoginInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginInfoResponse implements _LoginInfoResponse {
  const _$_LoginInfoResponse({required this.success, required this.loginInfo});

  factory _$_LoginInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginInfoResponseFromJson(json);

  @override
  final String success;
  @override
  final LoginInfo loginInfo;

  @override
  String toString() {
    return 'LoginInfoResponse(success: $success, loginInfo: $loginInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginInfoResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.loginInfo, loginInfo) ||
                other.loginInfo == loginInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, loginInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginInfoResponseCopyWith<_$_LoginInfoResponse> get copyWith =>
      __$$_LoginInfoResponseCopyWithImpl<_$_LoginInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginInfoResponseToJson(
      this,
    );
  }
}

abstract class _LoginInfoResponse implements LoginInfoResponse {
  const factory _LoginInfoResponse(
      {required final String success,
      required final LoginInfo loginInfo}) = _$_LoginInfoResponse;

  factory _LoginInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginInfoResponse.fromJson;

  @override
  String get success;
  @override
  LoginInfo get loginInfo;
  @override
  @JsonKey(ignore: true)
  _$$_LoginInfoResponseCopyWith<_$_LoginInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
