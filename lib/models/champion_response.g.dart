// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionResponse _$ChampionResponseFromJson(Map<String, dynamic> json) {
  return ChampionResponse(
    json['type'] as String,
    json['format'] as String,
    json['version'] as String,
    json['data'] == null
        ? null
        : ChampionData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChampionResponseToJson(ChampionResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
      'version': instance.version,
      'data': instance.data,
    };
