import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champions/image.dart';
import 'package:league_buddy/models/champions/info.dart';
import 'package:league_buddy/models/champions/passive.dart';
import 'package:league_buddy/models/champions/recommended.dart';
import 'package:league_buddy/models/champions/skins.dart';
import 'package:league_buddy/models/champions/spells.dart';
import 'package:league_buddy/models/champions/stats.dart';

part 'champion.g.dart';

@JsonSerializable()
class Champion {
  String version;
  String id;
  String key;
  String name;
  String title;
  Image image;
  List<Skins> skins;
  String lore;
  String blurb;
  List<String> allytips;
  List<String> enemytips;
  List<String> tags;
  String partype;
  Info info;
  Stats stats;
  List<Spells> spells;
  Passive passive;
  List<Recommended> recommended;

  Champion(
      this.version,
      this.id,
      this.key,
      this.name,
      this.title,
      this.image,
      this.skins,
      this.lore,
      this.blurb,
      this.allytips,
      this.enemytips,
      this.tags,
      this.partype,
      this.info,
      this.stats,
      this.spells,
      this.passive,
      this.recommended);

  factory Champion.fromJson(Map<String, dynamic> json) =>
      _$ChampionFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionToJson(this);

  @override
  String toString() {
    return 'Champion{version: $version, id: $id, key: $key, name: $name, title: $title, image: $image, skins: $skins, lore: $lore, blurb: $blurb, allytips: $allytips, enemytips: $enemytips, tags: $tags, partype: $partype, info: $info, stats: $stats, spells: $spells, passive: $passive, recommended: $recommended}';
  }
}
