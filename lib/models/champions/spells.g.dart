// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spells.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spells _$SpellsFromJson(Map<String, dynamic> json) {
  return Spells(
    json['id'] as String,
    json['name'] as String,
    json['description'] as String,
    json['tooltip'] as String,
    json['leveltip'] == null
        ? null
        : Leveltip.fromJson(json['leveltip'] as Map<String, dynamic>),
    (json['maxrank'] as num)?.toDouble(),
    (json['cooldown'] as List)?.map((e) => (e as num)?.toDouble())?.toList(),
    json['cooldownBurn'] as String,
    (json['cost'] as List)?.map((e) => (e as num)?.toDouble())?.toList(),
    json['costBurn'] as String,
    json['datavalues'] == null
        ? null
        : Datavalues.fromJson(json['datavalues'] as Map<String, dynamic>),
    json['effect'] as List,
    json['effectBurn'] as List,
    json['vars'] as List,
    json['costType'] as String,
    json['maxammo'] as String,
    (json['range'] as List)?.map((e) => (e as num)?.toDouble())?.toList(),
    json['rangeBurn'] as String,
    json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    json['resource'] as String,
  );
}

Map<String, dynamic> _$SpellsToJson(Spells instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tooltip': instance.tooltip,
      'leveltip': instance.leveltip,
      'maxrank': instance.maxrank,
      'cooldown': instance.cooldown,
      'cooldownBurn': instance.cooldownBurn,
      'cost': instance.cost,
      'costBurn': instance.costBurn,
      'datavalues': instance.datavalues,
      'effect': instance.effect,
      'effectBurn': instance.effectBurn,
      'vars': instance.vars,
      'costType': instance.costType,
      'maxammo': instance.maxammo,
      'range': instance.range,
      'rangeBurn': instance.rangeBurn,
      'image': instance.image,
      'resource': instance.resource,
    };
