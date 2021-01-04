// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    (json['attack'] as num)?.toDouble(),
    (json['defense'] as num)?.toDouble(),
    (json['magic'] as num)?.toDouble(),
    (json['difficulty'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'attack': instance.attack,
      'defense': instance.defense,
      'magic': instance.magic,
      'difficulty': instance.difficulty,
    };
