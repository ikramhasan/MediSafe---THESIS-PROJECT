// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrescriptionListRequest _$PrescriptionListRequestFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionListRequest.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionListRequest {
  UserWithPass get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionListRequestCopyWith<PrescriptionListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionListRequestCopyWith<$Res> {
  factory $PrescriptionListRequestCopyWith(PrescriptionListRequest value,
          $Res Function(PrescriptionListRequest) then) =
      _$PrescriptionListRequestCopyWithImpl<$Res, PrescriptionListRequest>;
  @useResult
  $Res call({UserWithPass user});

  $UserWithPassCopyWith<$Res> get user;
}

/// @nodoc
class _$PrescriptionListRequestCopyWithImpl<$Res,
        $Val extends PrescriptionListRequest>
    implements $PrescriptionListRequestCopyWith<$Res> {
  _$PrescriptionListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserWithPassCopyWith<$Res> get user {
    return $UserWithPassCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrescriptionListRequestCopyWith<$Res>
    implements $PrescriptionListRequestCopyWith<$Res> {
  factory _$$_PrescriptionListRequestCopyWith(_$_PrescriptionListRequest value,
          $Res Function(_$_PrescriptionListRequest) then) =
      __$$_PrescriptionListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserWithPass user});

  @override
  $UserWithPassCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PrescriptionListRequestCopyWithImpl<$Res>
    extends _$PrescriptionListRequestCopyWithImpl<$Res,
        _$_PrescriptionListRequest>
    implements _$$_PrescriptionListRequestCopyWith<$Res> {
  __$$_PrescriptionListRequestCopyWithImpl(_$_PrescriptionListRequest _value,
      $Res Function(_$_PrescriptionListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_PrescriptionListRequest(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrescriptionListRequest implements _PrescriptionListRequest {
  const _$_PrescriptionListRequest({required this.user});

  factory _$_PrescriptionListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionListRequestFromJson(json);

  @override
  final UserWithPass user;

  @override
  String toString() {
    return 'PrescriptionListRequest(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionListRequest &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionListRequestCopyWith<_$_PrescriptionListRequest>
      get copyWith =>
          __$$_PrescriptionListRequestCopyWithImpl<_$_PrescriptionListRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionListRequestToJson(
      this,
    );
  }
}

abstract class _PrescriptionListRequest implements PrescriptionListRequest {
  const factory _PrescriptionListRequest({required final UserWithPass user}) =
      _$_PrescriptionListRequest;

  factory _PrescriptionListRequest.fromJson(Map<String, dynamic> json) =
      _$_PrescriptionListRequest.fromJson;

  @override
  UserWithPass get user;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionListRequestCopyWith<_$_PrescriptionListRequest>
      get copyWith => throw _privateConstructorUsedError;
}
