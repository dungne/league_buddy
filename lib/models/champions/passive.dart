import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champions/image.dart';

part 'passive.g.dart';

@JsonSerializable()
class Passive {
  String name;
  String description;
  Image image;

  Passive(this.name, this.description, this.image);

  factory Passive.fromJson(Map<String, dynamic> json) =>
      _$PassiveFromJson(json);

  Map<String, dynamic> toJson() => _$PassiveToJson(this);

  @override
  String toString() {
    return 'Passive{name: $name, description: $description, image: $image}';
  }
}
