import 'package:flutter/material.dart';
import 'package:league_buddy/constant.dart';
import 'package:league_buddy/screens/champion/champion_list_view.dart';
import 'package:league_buddy/screens/item/item_list_view.dart';

enum _HomeScreenTab { champions, items }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tab = ValueNotifier(_HomeScreenTab.champions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
      ),
      body: ValueListenableBuilder<_HomeScreenTab>(
        valueListenable: _tab,
        builder: (context, tab, _) {
          switch (tab) {
            case _HomeScreenTab.items:
              return ItemListView();
            case _HomeScreenTab.items:
            default:
              return ChampionListView();
          }
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<_HomeScreenTab>(
        valueListenable: _tab,
        builder: (context, tab, _) {
          return BottomNavigationBar(
              currentIndex: _HomeScreenTab.values.indexOf(tab),
              onTap: (index) => _tab.value = _HomeScreenTab.values[index],
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Champions",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_grocery_store_sharp),
                  label: "Items",
                ),
              ]);
        },
      ),
    );
  }
}
