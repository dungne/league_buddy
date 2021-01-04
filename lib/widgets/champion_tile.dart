import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:league_buddy/models/champions/champion.dart';

class ChampionTile extends StatelessWidget {
  final Champion champion;
  VoidCallback clickCallback;

  ChampionTile({this.champion, this.clickCallback});

  @override
  Widget build(BuildContext context) {
    String loadingUrl =
        'https://ddragon.leagueoflegends.com/cdn/img/champion/loading/${champion.id}_0.jpg';
    String squareUrl =
        'https://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champion.id}.png';
    print('image url $squareUrl');
    return ListTile(
      leading: Image.network(squareUrl),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text(
        champion.name,
        style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headline6),
      ),
      subtitle: Text(
        champion.title,
        style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle1),
      ),
      onTap: () {
        clickCallback();
      },
    );
  }
}
