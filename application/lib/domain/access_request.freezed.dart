// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessRequest _$AccessRequestFromJson(Map<String, dynamic> json) {
  return _AccessRequest.fromJson(json);
}

/// @nodoc
mixin _$AccessRequest {
  UserWithPass get user => throw _privateConstructorUsedError;
  String get contractUuid => throw _privateConstructorUsedError;
  Grant get grant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessRequestCopyWith<AccessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessRequestCopyWith<$Res> {
  factory $AccessRequestCopyWith(
          AccessRequest value, $Res Function(AccessRequest) then) =
      _$AccessRequestCopyWithImpl<$Res, AccessRequest>;
  @useResult
  $Res call({UserWithPass user, String contractUuid, Grant grant});

  $UserWithPassCopyWith<$Res> get user;
  $GrantCopyWith<$Res> get grant;
}

/// @nodoc
class _$AccessRequestCopyWithImpl<$Res, $Val extends AccessRequest>
    implements $AccessRequestCopyWith<$Res> {
  _$AccessRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? contractUuid = null,
    Object? grant = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
      contractUuid: null == contractUuid
          ? _value.contractUuid
          : contractUuid // ignore: cast_nullable_to_non_nullable
              as String,
      grant: null == grant
          ? _value.grant
          : grant // ignore: cast_nullable_to_non_nullable
              as Grant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserWithPassCopyWith<$Res> get user {
    return $UserWithPassCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GrantCopyWith<$Res> get grant {
    return $GrantCopyWith<$Res>(_value.grant, (value) {
      return _then(_value.copyWith(grant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccessRequestCopyWith<$Res>
    implements $AccessRequestCopyWith<$Res> {
  factory _$$_AccessRequestCopyWith(
          _$_AccessRequest value, $Res Function(_$_AccessRequest) then) =
      __$$_AccessRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserWithPass user, String contractUuid, Grant grant});

  @override
  $UserWithPassCopyWith<$Res> get user;
  @override
  $GrantCopyWith<$Res> get grant;
}

/// @nodoc
class __$$_AccessRequestCopyWithImpl<$Res>
    extends _$AccessRequestCopyWithImpl<$Res, _$_AccessRequest>
    implements _$$_AccessRequestCopyWith<$Res> {
  __$$_AccessRequestCopyWithImpl(
      _$_AccessRequest _value, $Res Function(_$_AccessRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? contractUuid = null,
    Object? grant = null,
  }) {
    return _then(_$_AccessRequest(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
      contractUuid: null == contractUuid
          ? _value.contractUuid
          : contractUuid // ignore: cast_nullable_to_non_nullable
              as String,
      grant: null == grant
          ? _value.grant
          : grant // ignore: cast_nullable_to_non_nullable
              as Grant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessRequest implements _AccessRequest {
  const _$_AccessRequest(
      {required this.user, required this.contractUuid, required this.grant});

  factory _$_AccessRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AccessRequestFromJson(json);

  @override
  final UserWithPass user;
  @override
  final String contractUuid;
  @override
  final Grant grant;

  @override
  String toString() {
    return 'AccessRequest(user: $user, contractUuid: $contractUuid, grant: $grant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessRequest &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.contractUuid, contractUuid) ||
                other.contractUuid == contractUuid) &&
            (identical(other.grant, grant) || other.grant == grant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, contractUuid, grant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessRequestCopyWith<_$_AccessRequest> get copyWith =>
      __$$_AccessRequestCopyWithImpl<_$_AccessRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessRequestToJson(
      this,
    );
  }
}

abstract class _AccessRequest implements AccessRequest {
  const factory _AccessRequest(
      {required final UserWithPass user,
      required final String contractUuid,
      required final Grant grant}) = _$_AccessRequest;

  factory _AccessRequest.fromJson(Map<String, dynamic> json) =
      _$_AccessRequest.fromJson;

  @override
  UserWithPass get user;
  @override
  String get contractUuid;
  @override
  Grant get grant;
  @override
  @JsonKey(ignore: true)
  _$$_AccessRequestCopyWith<_$_AccessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Grant _$GrantFromJson(Map<String, dynamic> json) {
  return _Grant.fromJson(json);
}

/// @nodoc
mixin _$Grant {
  String get description => throw _privateConstructorUsedError;
  bool get isAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrantCopyWith<Grant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrantCopyWith<$Res> {
  factory $GrantCopyWith(Grant value, $Res Function(Grant) then) =
      _$GrantCopyWithImpl<$Res, Grant>;
  @useResult
  $Res call({String description, bool isAllowed});
}

/// @nodoc
class _$GrantCopyWithImpl<$Res, $Val extends Grant>
    implements $GrantCopyWith<$Res> {
  _$GrantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isAllowed = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAllowed: null == isAllowed
          ? _value.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrantCopyWith<$Res> implements $GrantCopyWith<$Res> {
  factory _$$_GrantCopyWith(_$_Grant value, $Res Function(_$_Grant) then) =
      __$$_GrantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, bool isAllowed});
}

/// @nodoc
class __$$_GrantCopyWithImpl<$Res> extends _$GrantCopyWithImpl<$Res, _$_Grant>
    implements _$$_GrantCopyWith<$Res> {
  __$$_GrantCopyWithImpl(_$_Grant _value, $Res Function(_$_Grant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isAllowed = null,
  }) {
    return _then(_$_Grant(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAllowed: null == isAllowed
          ? _value.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Grant implements _Grant {
  const _$_Grant({required this.description, required this.isAllowed});

  factory _$_Grant.fromJson(Map<String, dynamic> json) =>
      _$$_GrantFromJson(json);

  @override
  final String description;
  @override
  final bool isAllowed;

  @override
  String toString() {
    return 'Grant(description: $description, isAllowed: $isAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Grant &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAllowed, isAllowed) ||
                other.isAllowed == isAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, isAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrantCopyWith<_$_Grant> get copyWith =>
      __$$_GrantCopyWithImpl<_$_Grant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrantToJson(
      this,
    );
  }
}

abstract class _Grant implements Grant {
  const factory _Grant(
      {required final String description,
      required final bool isAllowed}) = _$_Grant;

  factory _Grant.fromJson(Map<String, dynamic> json) = _$_Grant.fromJson;

  @override
  String get description;
  @override
  bool get isAllowed;
  @override
  @JsonKey(ignore: true)
  _$$_GrantCopyWith<_$_Grant> get copyWith =>
      throw _privateConstructorUsedError;
}
