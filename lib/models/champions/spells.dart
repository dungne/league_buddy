import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champions/leveltip.dart';
import 'package:league_buddy/models/champions/datavalues.dart';
import 'package:league_buddy/models/champions/image.dart';

part 'spells.g.dart';

@JsonSerializable()
class Spells {
  String id;
  String name;
  String description;
  String tooltip;
  Leveltip leveltip;
  double maxrank;
  List<double> cooldown;
  String cooldownBurn;
  List<double> cost;
  String costBurn;
  Datavalues datavalues;
  List<Object> effect;
  List<Object> effectBurn;
  List<Object> vars;
  String costType;
  String maxammo;
  List<double> range;
  String rangeBurn;
  Image image;
  String resource;

  Spells(
      this.id,
      this.name,
      this.description,
      this.tooltip,
      this.leveltip,
      this.maxrank,
      this.cooldown,
      this.cooldownBurn,
      this.cost,
      this.costBurn,
      this.datavalues,
      this.effect,
      this.effectBurn,
      this.vars,
      this.costType,
      this.maxammo,
      this.range,
      this.rangeBurn,
      this.image,
      this.resource);

  factory Spells.fromJson(Map<String, dynamic> json) => _$SpellsFromJson(json);

  Map<String, dynamic> toJson() => _$SpellsToJson(this);

  @override
  String toString() {
    return 'Spells{id: $id, name: $name, description: $description, tooltip: $tooltip, leveltip: $leveltip, maxrank: $maxrank, cooldown: $cooldown, cooldownBurn: $cooldownBurn, cost: $cost, costBurn: $costBurn, datavalues: $datavalues, effect: $effect, effectBurn: $effectBurn, vars: $vars, costType: $costType, maxammo: $maxammo, range: $range, rangeBurn: $rangeBurn, image: $image, resource: $resource}';
  }
}
