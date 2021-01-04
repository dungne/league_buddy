import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:league_buddy/constant.dart';
import 'package:league_buddy/models/champion_response.dart';
import 'package:league_buddy/models/champions/champion.dart';
import 'package:league_buddy/screens/champion/champion_detail_screen.dart';
import 'package:league_buddy/widgets/champion_tile.dart';

class ChampionListView extends StatefulWidget {
  @override
  _ChampionListViewState createState() => _ChampionListViewState();
}

class _ChampionListViewState extends State<ChampionListView> {
  Future<ChampionResponse> futureChampionList;

  @override
  void initState() {
    super.initState();
    futureChampionList = fetchChampionList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder<ChampionResponse>(
          future: futureChampionList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Champion> list = snapshot.data.data.getList();
              return ListView.separated(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  Champion champion = list[index];
                  return ChampionTile(
                    champion: champion,
                    clickCallback: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChampionDetailScreen(champion.id);
                      }));
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Colors.black38);
                },
              );
            } else if (snapshot.hasError) {
              print(snapshot.error.toString());
              return Text(snapshot.error.toString());
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<ChampionResponse> fetchChampionList() async {
  Map<String, String> headers = {
    // 'Accept-Language': 'vn_VN',
    'Accept-Charset': 'application/x-www-form-urlencoded; charset=UTF-8'
  };
  final response = await http.get(
      'https://ddragon.leagueoflegends.com/cdn/10.25.1/data/$kLanguageVN/champion.json',
      headers: headers);
  if (response.statusCode == 200) {
    return ChampionResponse.fromJson(
        jsonDecode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception('Failed to load champion list');
  }
}
