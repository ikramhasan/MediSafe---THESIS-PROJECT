// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrescriptionListState {
  bool get loading => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  PrescriptionResponse get prescription => throw _privateConstructorUsedError;
  UserWithPass get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrescriptionListStateCopyWith<PrescriptionListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionListStateCopyWith<$Res> {
  factory $PrescriptionListStateCopyWith(PrescriptionListState value,
          $Res Function(PrescriptionListState) then) =
      _$PrescriptionListStateCopyWithImpl<$Res, PrescriptionListState>;
  @useResult
  $Res call(
      {bool loading,
      Failure failure,
      PrescriptionResponse prescription,
      UserWithPass user});

  $FailureCopyWith<$Res> get failure;
  $PrescriptionResponseCopyWith<$Res> get prescription;
  $UserWithPassCopyWith<$Res> get user;
}

/// @nodoc
class _$PrescriptionListStateCopyWithImpl<$Res,
        $Val extends PrescriptionListState>
    implements $PrescriptionListStateCopyWith<$Res> {
  _$PrescriptionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? prescription = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as PrescriptionResponse,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrescriptionResponseCopyWith<$Res> get prescription {
    return $PrescriptionResponseCopyWith<$Res>(_value.prescription, (value) {
      return _then(_value.copyWith(prescription: value) as $Val);
    });
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
abstract class _$$_PrescriptionListStateCopyWith<$Res>
    implements $PrescriptionListStateCopyWith<$Res> {
  factory _$$_PrescriptionListStateCopyWith(_$_PrescriptionListState value,
          $Res Function(_$_PrescriptionListState) then) =
      __$$_PrescriptionListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      Failure failure,
      PrescriptionResponse prescription,
      UserWithPass user});

  @override
  $FailureCopyWith<$Res> get failure;
  @override
  $PrescriptionResponseCopyWith<$Res> get prescription;
  @override
  $UserWithPassCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PrescriptionListStateCopyWithImpl<$Res>
    extends _$PrescriptionListStateCopyWithImpl<$Res, _$_PrescriptionListState>
    implements _$$_PrescriptionListStateCopyWith<$Res> {
  __$$_PrescriptionListStateCopyWithImpl(_$_PrescriptionListState _value,
      $Res Function(_$_PrescriptionListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? prescription = null,
    Object? user = null,
  }) {
    return _then(_$_PrescriptionListState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as PrescriptionResponse,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserWithPass,
    ));
  }
}

/// @nodoc

class _$_PrescriptionListState implements _PrescriptionListState {
  const _$_PrescriptionListState(
      {required this.loading,
      required this.failure,
      required this.prescription,
      required this.user});

  @override
  final bool loading;
  @override
  final Failure failure;
  @override
  final PrescriptionResponse prescription;
  @override
  final UserWithPass user;

  @override
  String toString() {
    return 'PrescriptionListState(loading: $loading, failure: $failure, prescription: $prescription, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionListState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, failure, prescription, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionListStateCopyWith<_$_PrescriptionListState> get copyWith =>
      __$$_PrescriptionListStateCopyWithImpl<_$_PrescriptionListState>(
          this, _$identity);
}

abstract class _PrescriptionListState implements PrescriptionListState {
  const factory _PrescriptionListState(
      {required final bool loading,
      required final Failure failure,
      required final PrescriptionResponse prescription,
      required final UserWithPass user}) = _$_PrescriptionListState;

  @override
  bool get loading;
  @override
  Failure get failure;
  @override
  PrescriptionResponse get prescription;
  @override
  UserWithPass get user;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionListStateCopyWith<_$_PrescriptionListState> get copyWith =>
      throw _privateConstructorUsedError;
}
