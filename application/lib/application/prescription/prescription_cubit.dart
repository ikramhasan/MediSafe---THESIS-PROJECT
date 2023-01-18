import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/domain/login_info.dart';
import 'package:hyperledger_admin/domain/medicine.dart';
import 'package:hyperledger_admin/domain/prescription_request.dart';
import 'package:hyperledger_admin/infrastructure/medisafe_repository.dart';

part 'prescription_state.dart';
part 'prescription_cubit.freezed.dart';

class PrescriptionCubit extends Cubit<PrescriptionState> {
  PrescriptionCubit() : super(PrescriptionState.initial());

  final MedisafeRepository _repo = MedisafeRepository.instance;

  void firstNameChanged(String firstNameStr) {
    final user = state.prescription.user.copyWith(firstName: firstNameStr);
    final prescription = state.prescription.copyWith(user: user);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  void lastNameChanged(String lastNameStr) {
    final user = state.prescription.user.copyWith(lastName: lastNameStr);
    final prescription = state.prescription.copyWith(user: user);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  void emailChanged(String emailStr) {
    final user = state.prescription.user.copyWith(username: emailStr);
    final prescription = state.prescription.copyWith(user: user);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  void conditionChanged(String condition) {
    final prescription = state.prescription.copyWith(condition: condition);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  void contractChanged(String contract) {
    final prescription =
        state.prescription.copyWith(contractTypeUuid: contract);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  Future<void> addAttachment(String attachment) async {
    List<String> attachments = [];
    if (state.prescription.attachments != null &&
        state.prescription.attachments!.isNotEmpty) {
      attachments.addAll(state.prescription.attachments!);
    }

    attachments.add(attachment);

    emit(
      state.copyWith(
        prescription: state.prescription.copyWith(
          attachments: attachments,
        ),
      ),
    );
  }

  void medicineNameChanged(String name) {
    emit(state.copyWith(medicineName: name));
  }

  void medicineDosageChanged(String dosage) {
    emit(state.copyWith(medicineDosage: dosage));
  }

  void medicineTimeChanged(String time) {
    emit(state.copyWith(when: time));
  }

  void medicineDescriptionChanged(String description) {
    emit(state.copyWith(medicineDescription: description));
  }

  void addMedicine() {
    List<Medicine> medicines = [];
    medicines.addAll(state.prescription.medicines);
    var medicine = Medicine(
      name: state.medicineName,
      dose: state.medicineDosage,
      time: state.when,
      description: state.medicineDescription,
    );
    medicines.add(medicine);
    final prescription = state.prescription.copyWith(medicines: medicines);

    emit(state.copyWith(
      prescription: prescription,
    ));
  }

  Future<void> submitButtonPressed() async {
    emit(state.copyWith(loading: true));
    final failureOrLoginInfo = await _repo.prescribeUser(state.prescription);

    emit(
      failureOrLoginInfo.fold(
        (f) => state.copyWith(loading: false, failure: f),
        (loginInfo) => state.copyWith(
          loading: false,
          loginInfo: loginInfo,
          failure: Failure.none(),
        ),
      ),
    );
  }
}
