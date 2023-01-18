// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medicine _$$_MedicineFromJson(Map<String, dynamic> json) => _$_Medicine(
      name: json['name'] as String,
      dose: json['dose'] as String,
      time: json['time'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_MedicineToJson(_$_Medicine instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dose': instance.dose,
      'time': instance.time,
      'description': instance.description,
    };
