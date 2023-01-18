import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_info.freezed.dart';
part 'login_info.g.dart';

@freezed
class LoginInfo with _$LoginInfo {
  const factory LoginInfo({
    @JsonKey(name: 'username') required String email,
    required String password,
    required String uuid,
  }) = _LoginInfo;

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);

  factory LoginInfo.empty() => const _LoginInfo(
        email: '',
        password: '',
        uuid: '',
      );
}

@freezed
class LoginInfoResponse with _$LoginInfoResponse {
  const factory LoginInfoResponse({
    required String success,
    required LoginInfo loginInfo,
  }) = _LoginInfoResponse;

  factory LoginInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoResponseFromJson(json);

  factory LoginInfoResponse.empty() => _LoginInfoResponse(
        success: '',
        loginInfo: LoginInfo.empty(),
      );
}
