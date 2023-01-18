import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/access_request.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/domain/prescription_response.dart';
import 'package:hyperledger_admin/domain/user_with_pass.dart';
import 'package:hyperledger_admin/infrastructure/medisafe_repository.dart';

part 'prescription_list_state.dart';
part 'prescription_list_cubit.freezed.dart';

class PrescriptionListCubit extends Cubit<PrescriptionListState> {
  PrescriptionListCubit() : super(PrescriptionListState.initial());

  final _repo = MedisafeRepository.instance;

  void emailChanged(String email) {
    final user = state.user.copyWith(username: email);
    emit(state.copyWith(user: user));
  }

  void passwordChanged(String pass) {
    final user = state.user.copyWith(password: pass);
    emit(state.copyWith(user: user));
  }

  Future<void> getPrescriptions() async {
    emit(state.copyWith(loading: true));
    final failureOrPrescriptions = await _repo.getPrescriptions(state.user);

    emit(
      failureOrPrescriptions.fold(
        (f) => state.copyWith(
          loading: false,
          failure: f,
        ),
        (prescription) => state.copyWith(
          loading: false,
          prescription: prescription,
          failure: Failure.none(),
        ),
      ),
    );
  }

  Future<void> grantAccess(String id) async {
    emit(state.copyWith(loading: true));
    final access = AccessRequest(
      user: state.user,
      contractUuid: id,
      grant: const Grant(isAllowed: true, description: ''),
    );
    final failureOrPrescriptions = await _repo.grantAccess(access);

    emit(
      failureOrPrescriptions.fold(
        (f) => state.copyWith(
          loading: false,
          failure: f,
        ),
        (prescription) => state.copyWith(
          loading: false,
          prescription: prescription,
          failure: Failure.none(),
        ),
      ),
    );
  }
}
