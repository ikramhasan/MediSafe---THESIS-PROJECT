// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrescriptionResponse _$$_PrescriptionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PrescriptionResponse(
      success: json['success'] as bool,
      prescriptions: (json['prescriptions'] as List<dynamic>)
          .map((e) => Prescription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrescriptionResponseToJson(
        _$_PrescriptionResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'prescriptions': instance.prescriptions,
    };

_$_Prescription _$$_PrescriptionFromJson(Map<String, dynamic> json) =>
    _$_Prescription(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      condition: json['condition'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      medicines: (json['medicines'] as List<dynamic>)
          .map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: DateTime.parse(json['date'] as String),
      contractTypeUuid: json['contractTypeUuid'] as String,
      claims: (json['claims'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrescriptionToJson(_$_Prescription instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'condition': instance.condition,
      'attachments': instance.attachments,
      'medicines': instance.medicines,
      'date': instance.date.toIso8601String(),
      'contractTypeUuid': instance.contractTypeUuid,
      'claims': instance.claims,
    };

_$_Access _$$_AccessFromJson(Map<String, dynamic> json) => _$_Access(
      isAllowed: json['isAllowed'] as bool,
    );

Map<String, dynamic> _$$_AccessToJson(_$_Access instance) => <String, dynamic>{
      'isAllowed': instance.isAllowed,
    };
