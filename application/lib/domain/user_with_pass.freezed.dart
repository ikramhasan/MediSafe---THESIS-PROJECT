// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_with_pass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWithPass _$UserWithPassFromJson(Map<String, dynamic> json) {
  return _UserWithPass.fromJson(json);
}

/// @nodoc
mixin _$UserWithPass {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithPassCopyWith<UserWithPass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithPassCopyWith<$Res> {
  factory $UserWithPassCopyWith(
          UserWithPass value, $Res Function(UserWithPass) then) =
      _$UserWithPassCopyWithImpl<$Res, UserWithPass>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$UserWithPassCopyWithImpl<$Res, $Val extends UserWithPass>
    implements $UserWithPassCopyWith<$Res> {
  _$UserWithPassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserWithPassCopyWith<$Res>
    implements $UserWithPassCopyWith<$Res> {
  factory _$$_UserWithPassCopyWith(
          _$_UserWithPass value, $Res Function(_$_UserWithPass) then) =
      __$$_UserWithPassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_UserWithPassCopyWithImpl<$Res>
    extends _$UserWithPassCopyWithImpl<$Res, _$_UserWithPass>
    implements _$$_UserWithPassCopyWith<$Res> {
  __$$_UserWithPassCopyWithImpl(
      _$_UserWithPass _value, $Res Function(_$_UserWithPass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_UserWithPass(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWithPass implements _UserWithPass {
  const _$_UserWithPass({required this.username, required this.password});

  factory _$_UserWithPass.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithPassFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserWithPass(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithPass &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWithPassCopyWith<_$_UserWithPass> get copyWith =>
      __$$_UserWithPassCopyWithImpl<_$_UserWithPass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithPassToJson(
      this,
    );
  }
}

abstract class _UserWithPass implements UserWithPass {
  const factory _UserWithPass(
      {required final String username,
      required final String password}) = _$_UserWithPass;

  factory _UserWithPass.fromJson(Map<String, dynamic> json) =
      _$_UserWithPass.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithPassCopyWith<_$_UserWithPass> get copyWith =>
      throw _privateConstructorUsedError;
}
