// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandomUser _$$_RandomUserFromJson(Map<String, dynamic> json) =>
    _$_RandomUser(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RandomUserToJson(_$_RandomUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'picture': instance.picture,
    };
