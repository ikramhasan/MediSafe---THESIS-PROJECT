import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/medicine.dart';

part 'prescription_response.freezed.dart';
part 'prescription_response.g.dart';

@freezed
class PrescriptionResponse with _$PrescriptionResponse {
  const factory PrescriptionResponse({
    required bool success,
    required List<Prescription> prescriptions,
  }) = _PrescriptionResponse;

  factory PrescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionResponseFromJson(json);

  factory PrescriptionResponse.empty() => const _PrescriptionResponse(
        success: false,
        prescriptions: [],
      );
}

@freezed
class Prescription with _$Prescription {
  const factory Prescription({
    required String uuid,
    required String username,
    required String condition,
    List<String>? attachments,
    required List<Medicine> medicines,
    required DateTime date,
    required String contractTypeUuid,
    List<Access>? claims,
  }) = _Prescription;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);

  factory Prescription.empty() => _Prescription(
        condition: '',
        contractTypeUuid: '',
        date: DateTime.now(),
        medicines: [],
        attachments: [],
        username: '',
        uuid: '',
        claims: [],
      );
}

@freezed
class Access with _$Access {
  const factory Access({
    required bool isAllowed,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);

  factory Access.empty() => const _Access(
        isAllowed: false,
      );
}
