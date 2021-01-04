// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leveltip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leveltip _$LeveltipFromJson(Map<String, dynamic> json) {
  return Leveltip(
    (json['label'] as List)?.map((e) => e as String)?.toList(),
    (json['effect'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$LeveltipToJson(Leveltip instance) => <String, dynamic>{
      'label': instance.label,
      'effect': instance.effect,
    };
