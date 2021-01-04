// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recommended _$RecommendedFromJson(Map<String, dynamic> json) {
  return Recommended(
    json['champion'] as String,
    json['title'] as String,
    json['map'] as String,
    json['mode'] as String,
    json['type'] as String,
    json['customTag'] as String,
    (json['sortrank'] as num)?.toDouble(),
    json['extensionPage'] as bool,
    json['customPanel'],
    (json['blocks'] as List)
        ?.map((e) =>
            e == null ? null : Blocks.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RecommendedToJson(Recommended instance) =>
    <String, dynamic>{
      'champion': instance.champion,
      'title': instance.title,
      'map': instance.map,
      'mode': instance.mode,
      'type': instance.type,
      'customTag': instance.customTag,
      'sortrank': instance.sortrank,
      'extensionPage': instance.extensionPage,
      'customPanel': instance.customPanel,
      'blocks': instance.blocks,
    };
