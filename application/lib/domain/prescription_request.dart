import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/medicine.dart';
import 'package:hyperledger_admin/domain/user_request.dart';

part 'prescription_request.g.dart';
part 'prescription_request.freezed.dart';

@freezed
class PrescriptionRequest with _$PrescriptionRequest {
  const factory PrescriptionRequest({
    required UserRequest user,
    required String contractTypeUuid,
    required String condition,
    List<String>? attachments,
    required List<Medicine> medicines,
  }) = _PrescriptionRequest;

  factory PrescriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionRequestFromJson(json);

  factory PrescriptionRequest.empty() => _PrescriptionRequest(
        condition: '',
        contractTypeUuid: '',
        medicines: [],
        user: UserRequest.empty(),
        attachments: [],
      );
}
