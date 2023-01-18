part of 'prescription_cubit.dart';

@freezed
class PrescriptionState with _$PrescriptionState {
  const factory PrescriptionState({
    required bool loading,
    required Failure failure,
    required LoginInfo loginInfo,
    required PrescriptionRequest prescription,
    required String medicineName,
    required String medicineDosage,
    required String when,
    required String medicineDescription,
  }) = _PrescriptionState;

  factory PrescriptionState.initial() => _PrescriptionState(
        loading: false,
        failure: Failure.none(),
        loginInfo: LoginInfo.empty(),
        prescription: PrescriptionRequest.empty(),
        medicineName: '',
        medicineDosage: '',
        when: 'Night',
        medicineDescription: '',
      );
}
