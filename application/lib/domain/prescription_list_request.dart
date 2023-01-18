import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/user_with_pass.dart';

part 'prescription_list_request.freezed.dart';
part 'prescription_list_request.g.dart';

@freezed
class PrescriptionListRequest with _$PrescriptionListRequest {
  const factory PrescriptionListRequest({
    required UserWithPass user,
  }) = _PrescriptionListRequest;

  factory PrescriptionListRequest.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionListRequestFromJson(json);

  factory PrescriptionListRequest.empty() => _PrescriptionListRequest(
        user: UserWithPass.empty(),
      );
}
