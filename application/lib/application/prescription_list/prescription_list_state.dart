part of 'prescription_list_cubit.dart';

@freezed
class PrescriptionListState with _$PrescriptionListState {
  const factory PrescriptionListState({
    required bool loading,
    required Failure failure,
    required PrescriptionResponse prescription,
    required UserWithPass user,
  }) = _PrescriptionListState;

  factory PrescriptionListState.initial() => _PrescriptionListState(
        loading: false,
        failure: Failure.none(),
        prescription: PrescriptionResponse.empty(),
        user: UserWithPass.empty(),
      );
}
