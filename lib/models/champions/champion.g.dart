// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Champion _$ChampionFromJson(Map<String, dynamic> json) {
  return Champion(
    json['version'] as String,
    json['id'] as String,
    json['key'] as String,
    json['name'] as String,
    json['title'] as String,
    json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    (json['skins'] as List)
        ?.map(
            (e) => e == null ? null : Skins.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['lore'] as String,
    json['blurb'] as String,
    (json['allytips'] as List)?.map((e) => e as String)?.toList(),
    (json['enemytips'] as List)?.map((e) => e as String)?.toList(),
    (json['tags'] as List)?.map((e) => e as String)?.toList(),
    json['partype'] as String,
    json['info'] == null
        ? null
        : Info.fromJson(json['info'] as Map<String, dynamic>),
    json['stats'] == null
        ? null
        : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    (json['spells'] as List)
        ?.map((e) =>
            e == null ? null : Spells.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['passive'] == null
        ? null
        : Passive.fromJson(json['passive'] as Map<String, dynamic>),
    (json['recommended'] as List)
        ?.map((e) =>
            e == null ? null : Recommended.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChampionToJson(Champion instance) => <String, dynamic>{
      'version': instance.version,
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'title': instance.title,
      'image': instance.image,
      'skins': instance.skins,
      'lore': instance.lore,
      'blurb': instance.blurb,
      'allytips': instance.allytips,
      'enemytips': instance.enemytips,
      'tags': instance.tags,
      'partype': instance.partype,
      'info': instance.info,
      'stats': instance.stats,
      'spells': instance.spells,
      'passive': instance.passive,
      'recommended': instance.recommended,
    };
