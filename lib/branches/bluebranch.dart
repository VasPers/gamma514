import 'dart:convert';
import 'package:ucheba/metrodata.dart';
import 'package:ucheba/prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ucheba/metrodata.dart';

import '../metrodata.dart';

class BlueBranchBuilder extends StatefulWidget {
  const BlueBranchBuilder({Key? key}) : super(key: key);

  @override
  State<BlueBranchBuilder> createState() => _BlueBranchBuilderState();
}

@override
// Future save(String key, value) async{
// final prefs = await SharedPreferences.getInstance();
// prefs.se
// }

class _BlueBranchBuilderState extends State<BlueBranchBuilder> {
  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
    //List<Map<String, dynamic>> metroStationsJson = metroStations.map((e) => e.toJson()).toList();
   // List<Map<String, dynamic>> favouriteDataJson = favouriteData.map((e) => e.toJson()).toList();
    String favouriteDataJson1 = jsonEncode(favouriteData);
    final List<MetroStation> blueMetroStation = metroStations
        .where((element) => element.branchType == BranchType.blueBranch)
        .toList();
    return Column(
      children: blueMetroStation
          .map((station) => Column(children: [
        InkWell(
          highlightColor: Colors.blueAccent,
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Цікава інформація про метро'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(station.iconImage),
                  Text('Глибина метро ${station.depth}м'),
                  station.transitData?.isTransitToGreen ?? false
                      ? const Text('Перехід на Палац спорту')
                      : station.transitData?.isTransit ?? false
                      ? const Text('Перехід на Хрещатик')
                      : const Text('Переходу немає')
                ],
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () =>
                        Navigator.pop(context, 'Дякую'),
                    child: const Text('Дякую'))
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: station.transitData?.isTransitToGreen ?? false
                  ? Colors.green
                  : station.transitData?.isTransit ?? false
                  ? Colors.red
                  : Colors.blue.withOpacity(0.7),
            ),
            width: double.infinity,
            child: station.transitData?.isTransit ?? false
                ? Row(
              children: [
                const Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: Icon(Icons.circle,
                          color: Colors.white),
                    )),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        station.ukrName,
                        style: const TextStyle(
                          color: Colors.yellowAccent,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        station.engName,
                        style: const TextStyle(
                            color: Colors.yellowAccent),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                        child: station.isFavourite
                            ? const Icon(Icons.remove_circle)
                            : const Icon(Icons.add_circle),
                        onTap: () {

                          setState(() {
                            if (station.isFavourite)  {
                              favouriteData.remove(station);
                              station.isFavourite = false;
                              debugPrint('-----------');
                              for (var element
                              in favouriteData) {
                                debugPrint(element.ukrName);
                              }
                              debugPrint('-----------');
                            } else {
                              favouriteData.add(station);
                              station.isFavourite = true;
                              debugPrint('-----------');
                              for (var element
                              in favouriteData) {
                                debugPrint(element.ukrName);
                              }
                              debugPrint('-----------');
                            }
                            debugPrint('$favouriteData');

                            SharedPref.setMap();
                          });
                        SharedPref.getMap().then((value) => print(value));}))
              ],
            )
                : Row(children: [
              Expanded(
                  flex: 6,
                  child: Text(
                    station.ukrName,
                    style:
                    const TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                  )),
              const Center(
                  child: Icon(
                    Icons.circle,
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 6,
                  child: Text(
                    station.engName,
                    style:
                    const TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  )),
              const Expanded(
                  flex: 1, child: Icon(Icons.add_circle))
            ]),
          ),
        ),
        Container(
            height: 9.745,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue.shade900.withOpacity(0.5)))
      ]))
          .toList(),
    );
  });
}


