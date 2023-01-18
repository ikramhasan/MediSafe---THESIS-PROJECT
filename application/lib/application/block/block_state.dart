part of 'block_cubit.dart';

@freezed
class BlockState with _$BlockState {
  const factory BlockState({
    required bool loading,
    required Failure failure,
    required List<Block> blocks,
  }) = _BlockState;

  factory BlockState.initial() => _BlockState(
        loading: true,
        blocks: [],
        failure: Failure.none(),
      );
}
