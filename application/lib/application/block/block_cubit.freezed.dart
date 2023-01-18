// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlockState {
  bool get loading => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<Block> get blocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockStateCopyWith<BlockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockStateCopyWith<$Res> {
  factory $BlockStateCopyWith(
          BlockState value, $Res Function(BlockState) then) =
      _$BlockStateCopyWithImpl<$Res, BlockState>;
  @useResult
  $Res call({bool loading, Failure failure, List<Block> blocks});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$BlockStateCopyWithImpl<$Res, $Val extends BlockState>
    implements $BlockStateCopyWith<$Res> {
  _$BlockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? blocks = null,
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
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
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
abstract class _$$_BlockStateCopyWith<$Res>
    implements $BlockStateCopyWith<$Res> {
  factory _$$_BlockStateCopyWith(
          _$_BlockState value, $Res Function(_$_BlockState) then) =
      __$$_BlockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Failure failure, List<Block> blocks});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_BlockStateCopyWithImpl<$Res>
    extends _$BlockStateCopyWithImpl<$Res, _$_BlockState>
    implements _$$_BlockStateCopyWith<$Res> {
  __$$_BlockStateCopyWithImpl(
      _$_BlockState _value, $Res Function(_$_BlockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = null,
    Object? blocks = null,
  }) {
    return _then(_$_BlockState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
    ));
  }
}

/// @nodoc

class _$_BlockState implements _BlockState {
  const _$_BlockState(
      {required this.loading,
      required this.failure,
      required final List<Block> blocks})
      : _blocks = blocks;

  @override
  final bool loading;
  @override
  final Failure failure;
  final List<Block> _blocks;
  @override
  List<Block> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString() {
    return 'BlockState(loading: $loading, failure: $failure, blocks: $blocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, failure,
      const DeepCollectionEquality().hash(_blocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockStateCopyWith<_$_BlockState> get copyWith =>
      __$$_BlockStateCopyWithImpl<_$_BlockState>(this, _$identity);
}

abstract class _BlockState implements BlockState {
  const factory _BlockState(
      {required final bool loading,
      required final Failure failure,
      required final List<Block> blocks}) = _$_BlockState;

  @override
  bool get loading;
  @override
  Failure get failure;
  @override
  List<Block> get blocks;
  @override
  @JsonKey(ignore: true)
  _$$_BlockStateCopyWith<_$_BlockState> get copyWith =>
      throw _privateConstructorUsedError;
}
