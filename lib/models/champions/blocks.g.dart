// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blocks _$BlocksFromJson(Map<String, dynamic> json) {
  return Blocks(
    json['type'] as String,
    json['recMath'] as bool,
    json['recSteps'] as bool,
    (json['minSummonerLevel'] as num)?.toDouble(),
    (json['maxSummonerLevel'] as num)?.toDouble(),
    json['showIfSummonerSpell'] as String,
    json['hideIfSummonerSpell'] as String,
    json['appendAfterSection'] as String,
    (json['visibleWithAllOf'] as List)?.map((e) => e as String)?.toList(),
    (json['hiddenWithAnyOf'] as List)?.map((e) => e as String)?.toList(),
    (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Items.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BlocksToJson(Blocks instance) => <String, dynamic>{
      'type': instance.type,
      'recMath': instance.recMath,
      'recSteps': instance.recSteps,
      'minSummonerLevel': instance.minSummonerLevel,
      'maxSummonerLevel': instance.maxSummonerLevel,
      'showIfSummonerSpell': instance.showIfSummonerSpell,
      'hideIfSummonerSpell': instance.hideIfSummonerSpell,
      'appendAfterSection': instance.appendAfterSection,
      'visibleWithAllOf': instance.visibleWithAllOf,
      'hiddenWithAnyOf': instance.hiddenWithAnyOf,
      'items': instance.items,
    };
