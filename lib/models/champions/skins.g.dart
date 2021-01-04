// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skins _$SkinsFromJson(Map<String, dynamic> json) {
  return Skins(
    json['id'] as String,
    (json['num'] as num)?.toDouble(),
    json['name'] as String,
    json['chromas'] as bool,
  );
}

Map<String, dynamic> _$SkinsToJson(Skins instance) => <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'chromas': instance.chromas,
    };
