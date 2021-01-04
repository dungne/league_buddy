import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champions/blocks.dart';

part 'recommended.g.dart';

@JsonSerializable()
class Recommended {
  String champion;
  String title;
  String map;
  String mode;
  String type;
  String customTag;
  double sortrank;
  bool extensionPage;
  Object customPanel;
  List<Blocks> blocks;

  Recommended(
      this.champion,
      this.title,
      this.map,
      this.mode,
      this.type,
      this.customTag,
      this.sortrank,
      this.extensionPage,
      this.customPanel,
      this.blocks);

  factory Recommended.fromJson(Map<String, dynamic> json) =>
      _$RecommendedFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedToJson(this);

  @override
  String toString() {
    return 'Recommended{champion: $champion, title: $title, map: $map, mode: $mode, type: $type, customTag: $customTag, sortrank: $sortrank, extensionPage: $extensionPage, customPanel: $customPanel, blocks: $blocks}';
  }
}
