// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image(
    json['full'] as String,
    json['sprite'] as String,
    json['group'] as String,
    (json['x'] as num)?.toDouble(),
    (json['y'] as num)?.toDouble(),
    (json['w'] as num)?.toDouble(),
    (json['h'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'full': instance.full,
      'sprite': instance.sprite,
      'group': instance.group,
      'x': instance.x,
      'y': instance.y,
      'w': instance.w,
      'h': instance.h,
    };
