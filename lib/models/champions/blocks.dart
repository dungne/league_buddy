import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champions/items.dart';

part 'blocks.g.dart';

@JsonSerializable()
class Blocks {
  String type;
  bool recMath;
  bool recSteps;
  double minSummonerLevel;
  double maxSummonerLevel;
  String showIfSummonerSpell;
  String hideIfSummonerSpell;
  String appendAfterSection;
  List<String> visibleWithAllOf;
  List<String> hiddenWithAnyOf;
  List<Items> items;

  Blocks(
      this.type,
      this.recMath,
      this.recSteps,
      this.minSummonerLevel,
      this.maxSummonerLevel,
      this.showIfSummonerSpell,
      this.hideIfSummonerSpell,
      this.appendAfterSection,
      this.visibleWithAllOf,
      this.hiddenWithAnyOf,
      this.items);

  factory Blocks.fromJson(Map<String, dynamic> json) => _$BlocksFromJson(json);

  Map<String, dynamic> toJson() => _$BlocksToJson(this);

  @override
  String toString() {
    return 'Blocks{type: $type, recMath: $recMath, recSteps: $recSteps, minSummonerLevel: $minSummonerLevel, maxSummonerLevel: $maxSummonerLevel, showIfSummonerSpell: $showIfSummonerSpell, hideIfSummonerSpell: $hideIfSummonerSpell, appendAfterSection: $appendAfterSection, visibleWithAllOf: $visibleWithAllOf, hiddenWithAnyOf: $hiddenWithAnyOf, items: $items}';
  }
}
