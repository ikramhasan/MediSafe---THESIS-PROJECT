import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/block.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/infrastructure/medisafe_repository.dart';

part 'block_state.dart';
part 'block_cubit.freezed.dart';

class BlockCubit extends Cubit<BlockState> {
  BlockCubit() : super(BlockState.initial());

  final _repo = MedisafeRepository.instance;

  Future<void> getBlocks() async {
    emit(state.copyWith(loading: true));
    final failureOrBlocks = await _repo.getBlocks();

    emit(
      failureOrBlocks.fold(
        (f) => state.copyWith(loading: false, failure: f),
        (blocks) => state.copyWith(
          loading: false,
          failure: Failure.none(),
          blocks: blocks,
        ),
      ),
    );
  }
}
