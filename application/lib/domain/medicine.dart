import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine.g.dart';
part 'medicine.freezed.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required String name,
    required String dose,
    required String time,
    String? description,
  }) = _Medicine;

  factory Medicine.fromJson(Map<String, dynamic> json) =>
      _$MedicineFromJson(json);

  factory Medicine.empty() =>
      const _Medicine(dose: '', name: '', time: '', description: '');
}
