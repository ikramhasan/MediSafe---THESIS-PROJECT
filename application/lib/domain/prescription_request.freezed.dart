// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrescriptionRequest _$PrescriptionRequestFromJson(Map<String, dynamic> json) {
  return _PrescriptionRequest.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionRequest {
  UserRequest get user => throw _privateConstructorUsedError;
  String get contractTypeUuid => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  List<String>? get attachments => throw _privateConstructorUsedError;
  List<Medicine> get medicines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionRequestCopyWith<PrescriptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionRequestCopyWith<$Res> {
  factory $PrescriptionRequestCopyWith(
          PrescriptionRequest value, $Res Function(PrescriptionRequest) then) =
      _$PrescriptionRequestCopyWithImpl<$Res, PrescriptionRequest>;
  @useResult
  $Res call(
      {UserRequest user,
      String contractTypeUuid,
      String condition,
      List<String>? attachments,
      List<Medicine> medicines});

  $UserRequestCopyWith<$Res> get user;
}

/// @nodoc
class _$PrescriptionRequestCopyWithImpl<$Res, $Val extends PrescriptionRequest>
    implements $PrescriptionRequestCopyWith<$Res> {
  _$PrescriptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? contractTypeUuid = null,
    Object? condition = null,
    Object? attachments = freezed,
    Object? medicines = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRequest,
      contractTypeUuid: null == contractTypeUuid
          ? _value.contractTypeUuid
          : contractTypeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medicines: null == medicines
          ? _value.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRequestCopyWith<$Res> get user {
    return $UserRequestCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrescriptionRequestCopyWith<$Res>
    implements $PrescriptionRequestCopyWith<$Res> {
  factory _$$_PrescriptionRequestCopyWith(_$_PrescriptionRequest value,
          $Res Function(_$_PrescriptionRequest) then) =
      __$$_PrescriptionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRequest user,
      String contractTypeUuid,
      String condition,
      List<String>? attachments,
      List<Medicine> medicines});

  @override
  $UserRequestCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PrescriptionRequestCopyWithImpl<$Res>
    extends _$PrescriptionRequestCopyWithImpl<$Res, _$_PrescriptionRequest>
    implements _$$_PrescriptionRequestCopyWith<$Res> {
  __$$_PrescriptionRequestCopyWithImpl(_$_PrescriptionRequest _value,
      $Res Function(_$_PrescriptionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? contractTypeUuid = null,
    Object? condition = null,
    Object? attachments = freezed,
    Object? medicines = null,
  }) {
    return _then(_$_PrescriptionRequest(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRequest,
      contractTypeUuid: null == contractTypeUuid
          ? _value.contractTypeUuid
          : contractTypeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrescriptionRequest implements _PrescriptionRequest {
  const _$_PrescriptionRequest(
      {required this.user,
      required this.contractTypeUuid,
      required this.condition,
      final List<String>? attachments,
      required final List<Medicine> medicines})
      : _attachments = attachments,
        _medicines = medicines;

  factory _$_PrescriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionRequestFromJson(json);

  @override
  final UserRequest user;
  @override
  final String contractTypeUuid;
  @override
  final String condition;
  final List<String>? _attachments;
  @override
  List<String>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString() {
    return 'PrescriptionRequest(user: $user, contractTypeUuid: $contractTypeUuid, condition: $condition, attachments: $attachments, medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionRequest &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.contractTypeUuid, contractTypeUuid) ||
                other.contractTypeUuid == contractTypeUuid) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      contractTypeUuid,
      condition,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionRequestCopyWith<_$_PrescriptionRequest> get copyWith =>
      __$$_PrescriptionRequestCopyWithImpl<_$_PrescriptionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionRequestToJson(
      this,
    );
  }
}

abstract class _PrescriptionRequest implements PrescriptionRequest {
  const factory _PrescriptionRequest(
      {required final UserRequest user,
      required final String contractTypeUuid,
      required final String condition,
      final List<String>? attachments,
      required final List<Medicine> medicines}) = _$_PrescriptionRequest;

  factory _PrescriptionRequest.fromJson(Map<String, dynamic> json) =
      _$_PrescriptionRequest.fromJson;

  @override
  UserRequest get user;
  @override
  String get contractTypeUuid;
  @override
  String get condition;
  @override
  List<String>? get attachments;
  @override
  List<Medicine> get medicines;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionRequestCopyWith<_$_PrescriptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
