import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  String full;
  String sprite;
  String group;
  double x;
  double y;
  double w;
  double h;

  Image(this.full, this.sprite, this.group, this.x, this.y, this.w, this.h);

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  @override
  String toString() {
    return 'Image{full: $full, sprite: $sprite, group: $group, x: $x, y: $y, w: $w, h: $h}';
  }
}
