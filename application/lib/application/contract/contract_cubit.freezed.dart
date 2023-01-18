// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContractState {
  bool get loading => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<Contract> get contacts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractStateCopyWith<ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractStateCopyWith<$Res> {
  factory $ContractStateCopyWith(
          ContractState value, $Res Function(ContractState) then) =
      _$ContractStateCopyWithImpl<$Res, ContractState>;
  @useResult
  $Res call({bool loading, Failure failure, List<Contract> contacts});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ContractStateCopyWithImpl<$Res, $Val extends ContractState>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? contacts = null,
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
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contract>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContractStateCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$$_ContractStateCopyWith(
          _$_ContractState value, $Res Function(_$_ContractState) then) =
      __$$_ContractStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Failure failure, List<Contract> contacts});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ContractStateCopyWithImpl<$Res>
    extends _$ContractStateCopyWithImpl<$Res, _$_ContractState>
    implements _$$_ContractStateCopyWith<$Res> {
  __$$_ContractStateCopyWithImpl(
      _$_ContractState _value, $Res Function(_$_ContractState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? contacts = null,
  }) {
    return _then(_$_ContractState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contract>,
    ));
  }
}

/// @nodoc

class _$_ContractState implements _ContractState {
  const _$_ContractState(
      {required this.loading,
      required this.failure,
      required final List<Contract> contacts})
      : _contacts = contacts;

  @override
  final bool loading;
  @override
  final Failure failure;
  final List<Contract> _contacts;
  @override
  List<Contract> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContractState(loading: $loading, failure: $failure, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, failure,
      const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      __$$_ContractStateCopyWithImpl<_$_ContractState>(this, _$identity);
}

abstract class _ContractState implements ContractState {
  const factory _ContractState(
      {required final bool loading,
      required final Failure failure,
      required final List<Contract> contacts}) = _$_ContractState;

  @override
  bool get loading;
  @override
  Failure get failure;
  @override
  List<Contract> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}
