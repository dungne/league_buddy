import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  double attack;
  double defense;
  double magic;
  double difficulty;

  Info(this.attack, this.defense, this.magic, this.difficulty);

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

  @override
  String toString() {
    return 'Info{attack: $attack, defense: $defense, magic: $magic, difficulty: $difficulty}';
  }
}
