// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttachmentState {
  bool get loading => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentStateCopyWith<AttachmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentStateCopyWith<$Res> {
  factory $AttachmentStateCopyWith(
          AttachmentState value, $Res Function(AttachmentState) then) =
      _$AttachmentStateCopyWithImpl<$Res, AttachmentState>;
  @useResult
  $Res call({bool loading, String attachment, String status});
}

/// @nodoc
class _$AttachmentStateCopyWithImpl<$Res, $Val extends AttachmentState>
    implements $AttachmentStateCopyWith<$Res> {
  _$AttachmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? attachment = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentStateCopyWith<$Res>
    implements $AttachmentStateCopyWith<$Res> {
  factory _$$_AttachmentStateCopyWith(
          _$_AttachmentState value, $Res Function(_$_AttachmentState) then) =
      __$$_AttachmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String attachment, String status});
}

/// @nodoc
class __$$_AttachmentStateCopyWithImpl<$Res>
    extends _$AttachmentStateCopyWithImpl<$Res, _$_AttachmentState>
    implements _$$_AttachmentStateCopyWith<$Res> {
  __$$_AttachmentStateCopyWithImpl(
      _$_AttachmentState _value, $Res Function(_$_AttachmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? attachment = null,
    Object? status = null,
  }) {
    return _then(_$_AttachmentState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AttachmentState implements _AttachmentState {
  const _$_AttachmentState(
      {required this.loading, required this.attachment, required this.status});

  @override
  final bool loading;
  @override
  final String attachment;
  @override
  final String status;

  @override
  String toString() {
    return 'AttachmentState(loading: $loading, attachment: $attachment, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, attachment, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentStateCopyWith<_$_AttachmentState> get copyWith =>
      __$$_AttachmentStateCopyWithImpl<_$_AttachmentState>(this, _$identity);
}

abstract class _AttachmentState implements AttachmentState {
  const factory _AttachmentState(
      {required final bool loading,
      required final String attachment,
      required final String status}) = _$_AttachmentState;

  @override
  bool get loading;
  @override
  String get attachment;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentStateCopyWith<_$_AttachmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
