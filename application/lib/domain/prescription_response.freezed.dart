// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrescriptionResponse _$PrescriptionResponseFromJson(Map<String, dynamic> json) {
  return _PrescriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Prescription> get prescriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionResponseCopyWith<PrescriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionResponseCopyWith<$Res> {
  factory $PrescriptionResponseCopyWith(PrescriptionResponse value,
          $Res Function(PrescriptionResponse) then) =
      _$PrescriptionResponseCopyWithImpl<$Res, PrescriptionResponse>;
  @useResult
  $Res call({bool success, List<Prescription> prescriptions});
}

/// @nodoc
class _$PrescriptionResponseCopyWithImpl<$Res,
        $Val extends PrescriptionResponse>
    implements $PrescriptionResponseCopyWith<$Res> {
  _$PrescriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? prescriptions = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      prescriptions: null == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrescriptionResponseCopyWith<$Res>
    implements $PrescriptionResponseCopyWith<$Res> {
  factory _$$_PrescriptionResponseCopyWith(_$_PrescriptionResponse value,
          $Res Function(_$_PrescriptionResponse) then) =
      __$$_PrescriptionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Prescription> prescriptions});
}

/// @nodoc
class __$$_PrescriptionResponseCopyWithImpl<$Res>
    extends _$PrescriptionResponseCopyWithImpl<$Res, _$_PrescriptionResponse>
    implements _$$_PrescriptionResponseCopyWith<$Res> {
  __$$_PrescriptionResponseCopyWithImpl(_$_PrescriptionResponse _value,
      $Res Function(_$_PrescriptionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? prescriptions = null,
  }) {
    return _then(_$_PrescriptionResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      prescriptions: null == prescriptions
          ? _value._prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrescriptionResponse implements _PrescriptionResponse {
  const _$_PrescriptionResponse(
      {required this.success, required final List<Prescription> prescriptions})
      : _prescriptions = prescriptions;

  factory _$_PrescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionResponseFromJson(json);

  @override
  final bool success;
  final List<Prescription> _prescriptions;
  @override
  List<Prescription> get prescriptions {
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prescriptions);
  }

  @override
  String toString() {
    return 'PrescriptionResponse(success: $success, prescriptions: $prescriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionResponse &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality()
                .equals(other._prescriptions, _prescriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_prescriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionResponseCopyWith<_$_PrescriptionResponse> get copyWith =>
      __$$_PrescriptionResponseCopyWithImpl<_$_PrescriptionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionResponseToJson(
      this,
    );
  }
}

abstract class _PrescriptionResponse implements PrescriptionResponse {
  const factory _PrescriptionResponse(
          {required final bool success,
          required final List<Prescription> prescriptions}) =
      _$_PrescriptionResponse;

  factory _PrescriptionResponse.fromJson(Map<String, dynamic> json) =
      _$_PrescriptionResponse.fromJson;

  @override
  bool get success;
  @override
  List<Prescription> get prescriptions;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionResponseCopyWith<_$_PrescriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Prescription _$PrescriptionFromJson(Map<String, dynamic> json) {
  return _Prescription.fromJson(json);
}

/// @nodoc
mixin _$Prescription {
  String get uuid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  List<String>? get attachments => throw _privateConstructorUsedError;
  List<Medicine> get medicines => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get contractTypeUuid => throw _privateConstructorUsedError;
  List<Access>? get claims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionCopyWith<Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionCopyWith<$Res> {
  factory $PrescriptionCopyWith(
          Prescription value, $Res Function(Prescription) then) =
      _$PrescriptionCopyWithImpl<$Res, Prescription>;
  @useResult
  $Res call(
      {String uuid,
      String username,
      String condition,
      List<String>? attachments,
      List<Medicine> medicines,
      DateTime date,
      String contractTypeUuid,
      List<Access>? claims});
}

/// @nodoc
class _$PrescriptionCopyWithImpl<$Res, $Val extends Prescription>
    implements $PrescriptionCopyWith<$Res> {
  _$PrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
    Object? condition = null,
    Object? attachments = freezed,
    Object? medicines = null,
    Object? date = null,
    Object? contractTypeUuid = null,
    Object? claims = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractTypeUuid: null == contractTypeUuid
          ? _value.contractTypeUuid
          : contractTypeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      claims: freezed == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<Access>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrescriptionCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$_PrescriptionCopyWith(
          _$_Prescription value, $Res Function(_$_Prescription) then) =
      __$$_PrescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String username,
      String condition,
      List<String>? attachments,
      List<Medicine> medicines,
      DateTime date,
      String contractTypeUuid,
      List<Access>? claims});
}

/// @nodoc
class __$$_PrescriptionCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$_Prescription>
    implements _$$_PrescriptionCopyWith<$Res> {
  __$$_PrescriptionCopyWithImpl(
      _$_Prescription _value, $Res Function(_$_Prescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
    Object? condition = null,
    Object? attachments = freezed,
    Object? medicines = null,
    Object? date = null,
    Object? contractTypeUuid = null,
    Object? claims = freezed,
  }) {
    return _then(_$_Prescription(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractTypeUuid: null == contractTypeUuid
          ? _value.contractTypeUuid
          : contractTypeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      claims: freezed == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<Access>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prescription implements _Prescription {
  const _$_Prescription(
      {required this.uuid,
      required this.username,
      required this.condition,
      final List<String>? attachments,
      required final List<Medicine> medicines,
      required this.date,
      required this.contractTypeUuid,
      final List<Access>? claims})
      : _attachments = attachments,
        _medicines = medicines,
        _claims = claims;

  factory _$_Prescription.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionFromJson(json);

  @override
  final String uuid;
  @override
  final String username;
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
  final DateTime date;
  @override
  final String contractTypeUuid;
  final List<Access>? _claims;
  @override
  List<Access>? get claims {
    final value = _claims;
    if (value == null) return null;
    if (_claims is EqualUnmodifiableListView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Prescription(uuid: $uuid, username: $username, condition: $condition, attachments: $attachments, medicines: $medicines, date: $date, contractTypeUuid: $contractTypeUuid, claims: $claims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prescription &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contractTypeUuid, contractTypeUuid) ||
                other.contractTypeUuid == contractTypeUuid) &&
            const DeepCollectionEquality().equals(other._claims, _claims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      username,
      condition,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_medicines),
      date,
      contractTypeUuid,
      const DeepCollectionEquality().hash(_claims));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionCopyWith<_$_Prescription> get copyWith =>
      __$$_PrescriptionCopyWithImpl<_$_Prescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionToJson(
      this,
    );
  }
}

abstract class _Prescription implements Prescription {
  const factory _Prescription(
      {required final String uuid,
      required final String username,
      required final String condition,
      final List<String>? attachments,
      required final List<Medicine> medicines,
      required final DateTime date,
      required final String contractTypeUuid,
      final List<Access>? claims}) = _$_Prescription;

  factory _Prescription.fromJson(Map<String, dynamic> json) =
      _$_Prescription.fromJson;

  @override
  String get uuid;
  @override
  String get username;
  @override
  String get condition;
  @override
  List<String>? get attachments;
  @override
  List<Medicine> get medicines;
  @override
  DateTime get date;
  @override
  String get contractTypeUuid;
  @override
  List<Access>? get claims;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionCopyWith<_$_Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

Access _$AccessFromJson(Map<String, dynamic> json) {
  return _Access.fromJson(json);
}

/// @nodoc
mixin _$Access {
  bool get isAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call({bool isAllowed});
}

/// @nodoc
class _$AccessCopyWithImpl<$Res, $Val extends Access>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllowed = null,
  }) {
    return _then(_value.copyWith(
      isAllowed: null == isAllowed
          ? _value.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$$_AccessCopyWith(_$_Access value, $Res Function(_$_Access) then) =
      __$$_AccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAllowed});
}

/// @nodoc
class __$$_AccessCopyWithImpl<$Res>
    extends _$AccessCopyWithImpl<$Res, _$_Access>
    implements _$$_AccessCopyWith<$Res> {
  __$$_AccessCopyWithImpl(_$_Access _value, $Res Function(_$_Access) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllowed = null,
  }) {
    return _then(_$_Access(
      isAllowed: null == isAllowed
          ? _value.isAllowed
          : isAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Access implements _Access {
  const _$_Access({required this.isAllowed});

  factory _$_Access.fromJson(Map<String, dynamic> json) =>
      _$$_AccessFromJson(json);

  @override
  final bool isAllowed;

  @override
  String toString() {
    return 'Access(isAllowed: $isAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Access &&
            (identical(other.isAllowed, isAllowed) ||
                other.isAllowed == isAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      __$$_AccessCopyWithImpl<_$_Access>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessToJson(
      this,
    );
  }
}

abstract class _Access implements Access {
  const factory _Access({required final bool isAllowed}) = _$_Access;

  factory _Access.fromJson(Map<String, dynamic> json) = _$_Access.fromJson;

  @override
  bool get isAllowed;
  @override
  @JsonKey(ignore: true)
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      throw _privateConstructorUsedError;
}
