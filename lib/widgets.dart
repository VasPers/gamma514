import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ucheba/metrodata.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  text: 'Blue',
                ),
                Tab(
                  text: 'Red',
                ),
                Tab(
                  text: 'Green',
                )
              ]),
              title: const Align(
                alignment: Alignment.center,
                child: Text(
                  'MetroMap',
                  textAlign: TextAlign.center,
                ),
              ),
              actions: [
                Align(
                  child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.network(
                          'https://www.svgrepo.com/show/43991/kiev-metro-logo.svg')),
                )
              ],
            ),
            body: TabBarView(children: [
              Builder(
                builder: (context) {
                  final List<MetroStation> blueMetroStation = metroStations.where((element) => element.branchType == BranchType.blueBranch).toList();
                  return Column(
                    children: blueMetroStation
                        .map((station) => Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: station.transitData?.isTransit ?? false
                                    ? const BorderRadius.all(
                                        Radius.elliptical(20, 0))
                                    : const BorderRadius.all(Radius.circular(220)),
                                color: station.transitData?.isTransit ?? false
                                    ? Colors.red
                                    : Colors.blueAccent.withOpacity(0.7),
                              ),
                              width: double.infinity,
                              child: station.transitData?.isTransit ?? false
                                  ? Row(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.only(left: 150),
                                          child:
                                              ClickableIconDialog(station: station),
                                        )),
                                        Expanded(
                                          child: Column(
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
                                                height: 10,
                                              ),
                                              Text(
                                                station.engName,
                                                style: const TextStyle(
                                                    color: Colors.yellowAccent),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : Row(children: [
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            station.ukrName,
                                            style: const TextStyle(
                                                color: Colors.white),
                                            textAlign: TextAlign.right,
                                          )),
                                      Center(
                                        child:
                                            ClickableIconDialog(station: station),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            station.engName,
                                            style: const TextStyle(
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          )),
                                    ]),
                            ))
                        .toList(),
                  );
                }
              ),
              Column(
                children: metroStations
                    .map((station) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: station.transitData?.isTransit ?? false
                                ? const BorderRadius.all(
                                    Radius.elliptical(20, 0))
                                : const BorderRadius.all(Radius.circular(220)),
                            color: station.transitData?.isTransit ?? false
                                ? Colors.red
                                : Colors.blueAccent.withOpacity(0.7),
                          ),
                          width: double.infinity,
                          child: station.transitData?.isTransit ?? false
                              ? Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.only(left: 150),
                                      child:
                                          ClickableIconDialog(station: station),
                                    )),
                                    Expanded(
                                      child: Column(
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
                                            height: 10,
                                          ),
                                          Text(
                                            station.engName,
                                            style: const TextStyle(
                                                color: Colors.yellowAccent),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Row(children: [
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        station.ukrName,
                                        style: const TextStyle(
                                            color: Colors.white),
                                        textAlign: TextAlign.right,
                                      )),
                                  Center(
                                    child:
                                        ClickableIconDialog(station: station),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        station.engName,
                                        style: const TextStyle(
                                            color: Colors.white),
                                        textAlign: TextAlign.left,
                                      )),
                                ]),
                        ))
                    .toList(),
              ),
              Column(
                children: metroStations
                    .map((station) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: station.transitData?.isTransit ?? false
                                ? const BorderRadius.all(
                                    Radius.elliptical(20, 0))
                                : const BorderRadius.all(Radius.circular(220)),
                            color: station.transitData?.isTransit ?? false
                                ? Colors.red
                                : Colors.blueAccent.withOpacity(0.7),
                          ),
                          width: double.infinity,
                          child: station.transitData?.isTransit ?? false
                              ? Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.only(left: 150),
                                      child:
                                          ClickableIconDialog(station: station),
                                    )),
                                    Expanded(
                                      child: Column(
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
                                            height: 10,
                                          ),
                                          Text(
                                            station.engName,
                                            style: const TextStyle(
                                                color: Colors.yellowAccent),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Row(children: [
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        station.ukrName,
                                        style: const TextStyle(
                                            color: Colors.white),
                                        textAlign: TextAlign.right,
                                      )),
                                  Center(
                                    child:
                                        ClickableIconDialog(station: station),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        station.engName,
                                        style: const TextStyle(
                                            color: Colors.white),
                                        textAlign: TextAlign.left,
                                      )),
                                ]),
                        ))
                    .toList(),
              ),
            ])),
      ),
    ));
  }
}

class ClickableIconDialog extends StatelessWidget {
  final MetroStation station;

  const ClickableIconDialog({Key? key, required this.station})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Цікава інформація про метро'),
                content: Container(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Image.asset(station.iconImage),
                    ),
                    Text('Глубина метро ${station.depth}м'),
                  ],
                )),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Дякую'),
                      child: const Text('Дякую'))
                ],
              ),
            ),
        child: const Icon(
          Icons.circle,
          color: Colors.white,
        ));
  }
}
