import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperledger_admin/domain/user_with_pass.dart';

part 'access_request.freezed.dart';
part 'access_request.g.dart';

@freezed
class AccessRequest with _$AccessRequest {
  const factory AccessRequest({
    required UserWithPass user,
    required String contractUuid,
    required Grant grant,
  }) = _AccessRequest;

  factory AccessRequest.fromJson(Map<String, dynamic> json) =>
      _$AccessRequestFromJson(json);

  factory AccessRequest.empty() => _AccessRequest(
        contractUuid: '',
        grant: Grant.empty(),
        user: UserWithPass.empty(),
      );
}

@freezed
class Grant with _$Grant {
  const factory Grant({
    required String description,
    required bool isAllowed,
  }) = _Grant;

  factory Grant.fromJson(Map<String, dynamic> json) => _$GrantFromJson(json);

  factory Grant.empty() => const _Grant(
        description: '',
        isAllowed: false,
      );
}
