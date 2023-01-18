import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/contract.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/infrastructure/medisafe_repository.dart';

part 'contract_state.dart';
part 'contract_cubit.freezed.dart';

class ContractCubit extends Cubit<ContractState> {
  ContractCubit() : super(ContractState.initial());

  final MedisafeRepository _repo = MedisafeRepository.instance;

  Future<void> fetchContracts() async {
    emit(state.copyWith(loading: true));
    final failureOrContracts = await _repo.getContracts();

    emit(
      failureOrContracts.fold(
        (f) => state.copyWith(loading: false, failure: f),
        (contracts) => state.copyWith(
          loading: false,
          failure: Failure.none(),
          contacts: contracts,
        ),
      ),
    );
  }
}
