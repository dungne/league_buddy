import 'package:json_annotation/json_annotation.dart';

part 'leveltip.g.dart';

@JsonSerializable()
class Leveltip {
  List<String> label;
  List<String> effect;

  Leveltip(this.label, this.effect);

  factory Leveltip.fromJson(Map<String, dynamic> json) =>
      _$LeveltipFromJson(json);

  Map<String, dynamic> toJson() => _$LeveltipToJson(this);

  @override
  String toString() {
    return 'Leveltip{label: $label, effect: $effect}';
  }
}
