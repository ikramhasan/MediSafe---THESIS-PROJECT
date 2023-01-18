import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract.freezed.dart';
part 'contract.g.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    required String uuid,
    required String description,
    required String conditions,
    required bool active,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  factory Contract.empty() => const _Contract(
        uuid: '',
        description: '',
        conditions: '',
        active: false,
      );
}
