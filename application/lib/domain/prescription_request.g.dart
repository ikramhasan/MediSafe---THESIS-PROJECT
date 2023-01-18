// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrescriptionRequest _$$_PrescriptionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PrescriptionRequest(
      user: UserRequest.fromJson(json['user'] as Map<String, dynamic>),
      contractTypeUuid: json['contractTypeUuid'] as String,
      condition: json['condition'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      medicines: (json['medicines'] as List<dynamic>)
          .map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrescriptionRequestToJson(
        _$_PrescriptionRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'contractTypeUuid': instance.contractTypeUuid,
      'condition': instance.condition,
      'attachments': instance.attachments,
      'medicines': instance.medicines,
    };
