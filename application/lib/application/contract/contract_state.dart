part of 'contract_cubit.dart';

@freezed
class ContractState with _$ContractState {
  const factory ContractState({
    required bool loading,
    required Failure failure,
    required List<Contract> contacts,
  }) = _ContractState;

  factory ContractState.initial() => _ContractState(
        loading: true,
        contacts: [],
        failure: Failure.none(),
      );
}
