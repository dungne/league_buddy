import 'package:json_annotation/json_annotation.dart';

part 'skins.g.dart';

@JsonSerializable()
class Skins {
  String id;
  double num;
  String name;
  bool chromas;

  Skins(this.id, this.num, this.name, this.chromas);

  factory Skins.fromJson(Map<String, dynamic> json) => _$SkinsFromJson(json);

  Map<String, dynamic> toJson() => _$SkinsToJson(this);

  @override
  String toString() {
    return 'Skins{id: $id, num: $num, name: $name, chromas: $chromas}';
  }
}
