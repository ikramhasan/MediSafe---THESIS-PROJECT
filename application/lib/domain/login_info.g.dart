// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginInfo _$$_LoginInfoFromJson(Map<String, dynamic> json) => _$_LoginInfo(
      email: json['username'] as String,
      password: json['password'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$$_LoginInfoToJson(_$_LoginInfo instance) =>
    <String, dynamic>{
      'username': instance.email,
      'password': instance.password,
      'uuid': instance.uuid,
    };

_$_LoginInfoResponse _$$_LoginInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginInfoResponse(
      success: json['success'] as String,
      loginInfo: LoginInfo.fromJson(json['loginInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginInfoResponseToJson(
        _$_LoginInfoResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'loginInfo': instance.loginInfo,
    };
