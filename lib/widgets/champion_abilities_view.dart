import 'package:flutter/material.dart';
import 'package:league_buddy/models/champions/champion.dart';
import 'package:league_buddy/models/champions/spells.dart';

class ChampionAbilitiesView extends StatelessWidget {
  final Champion champion;

  ChampionAbilitiesView(this.champion);

  @override
  Widget build(BuildContext context) {
    List<Spells> list = champion.spells;
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black38);
        },
        itemCount: list.length,
        itemBuilder: (context, index) {
          Spells spell = list[index];
          String url =
              'https://ddragon.leagueoflegends.com/cdn/10.25.1/img/spell/${spell.image.full}';
          return ListTile(
            leading: Image.network(url),
            title: Text(spell.name),
            subtitle: Text(spell.description),
          );
        });
  }
}
