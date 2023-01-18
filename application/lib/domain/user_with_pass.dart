import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_with_pass.freezed.dart';
part 'user_with_pass.g.dart';

@freezed
class UserWithPass with _$UserWithPass {
  const factory UserWithPass({
    required String username,
    required String password,
  }) = _UserWithPass;

  factory UserWithPass.fromJson(Map<String, dynamic> json) =>
      _$UserWithPassFromJson(json);

  factory UserWithPass.empty() => const _UserWithPass(
        username: '',
        password: '',
      );
}
