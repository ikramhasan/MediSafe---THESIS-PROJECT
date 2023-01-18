// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessRequest _$$_AccessRequestFromJson(Map<String, dynamic> json) =>
    _$_AccessRequest(
      user: UserWithPass.fromJson(json['user'] as Map<String, dynamic>),
      contractUuid: json['contractUuid'] as String,
      grant: Grant.fromJson(json['grant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccessRequestToJson(_$_AccessRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'contractUuid': instance.contractUuid,
      'grant': instance.grant,
    };

_$_Grant _$$_GrantFromJson(Map<String, dynamic> json) => _$_Grant(
      description: json['description'] as String,
      isAllowed: json['isAllowed'] as bool,
    );

Map<String, dynamic> _$$_GrantToJson(_$_Grant instance) => <String, dynamic>{
      'description': instance.description,
      'isAllowed': instance.isAllowed,
    };
