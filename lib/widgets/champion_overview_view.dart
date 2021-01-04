import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:league_buddy/models/champions/champion.dart';

class ChampionOverviewView extends StatelessWidget {
  final Champion champion;

  ChampionOverviewView(this.champion);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: viewportConstraints.maxHeight / 3,
                      minWidth: viewportConstraints.maxWidth),
                  child: Image.network(
                      'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/${champion.id}_0.jpg'),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 20, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        champion.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        champion.title,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        '\n${champion.lore}',
                        style: GoogleFonts.robotoCondensed(fontSize: 17),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
