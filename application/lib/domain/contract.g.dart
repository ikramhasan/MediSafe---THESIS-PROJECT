// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contract _$$_ContractFromJson(Map<String, dynamic> json) => _$_Contract(
      uuid: json['uuid'] as String,
      description: json['description'] as String,
      conditions: json['conditions'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$_ContractToJson(_$_Contract instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'description': instance.description,
      'conditions': instance.conditions,
      'active': instance.active,
    };
