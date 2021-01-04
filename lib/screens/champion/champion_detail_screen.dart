import 'dart:convert';
import 'package:league_buddy/models/champions/champion.dart';
import 'package:league_buddy/widgets/champion_abilities_view.dart';
import 'package:league_buddy/widgets/champion_overview_view.dart';
import 'package:league_buddy/widgets/champion_skins_view.dart';

import '../../constant.dart';
import 'package:flutter/material.dart';
import 'package:league_buddy/models/champion_response.dart';
import 'package:http/http.dart' as http;

class ChampionDetailScreen extends StatefulWidget {
  final String championId;

  ChampionDetailScreen(this.championId);

  @override
  _ChampionDetailScreenState createState() => _ChampionDetailScreenState();
}

class _ChampionDetailScreenState extends State<ChampionDetailScreen> {
  Future<ChampionResponse> futureChampionDetail;

  @override
  void initState() {
    super.initState();
    futureChampionDetail = fetchChampionDetail(widget.championId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureChampionDetail,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          Champion champion = snapshot.data.data.getChampion(widget.championId);
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text(widget.championId),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Overview'),
                    Tab(text: 'Abilities'),
                    Tab(text: 'Skins'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ChampionOverviewView(champion),
                  ChampionAbilitiesView(champion),
                  ChampionSkinsView()
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          print(snapshot.error.toString());
          return Text(snapshot.error.toString());
        }
        return Scaffold(
            appBar: AppBar(
              title: Text(widget.championId),
            ),
            body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}

Future<ChampionResponse> fetchChampionDetail(String championId) async {
  Map<String, String> headers = {
    // 'Accept-Language': 'vn_VN',
    'Accept-Charset': 'application/x-www-form-urlencoded; charset=UTF-16'
  };
  final response = await http.get(
      'https://ddragon.leagueoflegends.com/cdn/10.25.1/data/$kLanguageVN/champion/$championId.json',
      headers: headers);
  if (response.statusCode == 200) {
    print('RAW response ${utf8.decode(response.bodyBytes)}');
    return ChampionResponse.fromJson(
        jsonDecode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception('Failed to load champion list');
  }
}
