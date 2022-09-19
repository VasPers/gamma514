import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ucheba/metrodata.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
                backgroundColor: Colors.grey[600],
                appBar: AppBar(
                  backgroundColor: Colors.grey[900],
                  bottom: const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.white),
                      tabs: [
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("BLUE"),
                        )),
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("RED"),
                        )),
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("GREEN"),
                        ))
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
                              'https://www.svgrepo.com/show/397501/metro.svg')),
                    )
                  ],
                ),
                body: const TabBarView(children: [
                  BlueBranchBuilder(),
                  RedBranchBuilder(),
                  GreenBranchBuilder()
                ])),
          ),
        ));
  }
}

class BlueBranchBuilder extends StatefulWidget {
  const BlueBranchBuilder({Key? key}) : super(key: key);

  @override
  State<BlueBranchBuilder> createState() => _BlueBranchBuilderState();
}

class _BlueBranchBuilderState extends State<BlueBranchBuilder> {
  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
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
                                      flex: 1, child: GestureDetector(child: const Icon(Icons.add_circle),
  //                                 onTap: () {
  //                                 setState(() {
  //                                 if (station.favourite) {
  //                                 favouriteData.remove(station);
  //                                 station.favourite = false;
  //
  //                                 // Результат favoriteData
  //                                 print('-----------');
  // favouriteData.forEach((element) => print(element.ukrName));
  //                                 print('-----------');
  //                                 } else {
  // favouriteData.add(station);
  //                                 station.favourite = true;
  //
  //                                 // Результат favoriteData
  //                                 print('-----------');
  //                                 favouriteData.forEach((element) => print(element.ukrName));
  //                                 print('-----------');
  //                                 }});}
                                    )
  )],
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
                                const Expanded(flex: 1, child: Icon(Icons.add_circle))
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

class RedBranchBuilder extends StatefulWidget {
  const RedBranchBuilder({Key? key}) : super(key: key);

  @override
  State<RedBranchBuilder> createState() => _RedBranchBuilderState();
}

class _RedBranchBuilderState extends State<RedBranchBuilder> {
  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final List<MetroStation> redBranch = metroStations
            .where((element) => element.branchType == BranchType.redBranch)
            .toList();
        return Column(
          children: redBranch
              .map((station) => Column(children: [
                    InkWell(
                      highlightColor: Colors.red,
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
                                  ? const Text('Перехід на Золоті ворота')
                                  : station.transitData?.isTransit ?? false
                                      ? const Text(
                                          'Перехід на Майдан незалежності')
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
                            color:
                                station.transitData?.isTransitToGreen ?? false
                                    ? Colors.green
                                    : station.transitData?.isTransit ?? false
                                        ? Colors.blueAccent
                                        : Colors.red.withOpacity(0.95)),
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
                                  const Expanded(
                                      flex: 1, child: Icon(Icons.add_circle))
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
                                const Expanded(flex: 1, child: Icon(Icons.add_circle))
                              ]),
                      ),
                    ),
                    Container(
                      height: 9.745,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red.shade900.withOpacity(0.2)),
                    ),
                  ]))
              .toList(),
        );
      });
}

class GreenBranchBuilder extends StatefulWidget {
  const GreenBranchBuilder({Key? key}) : super(key: key);

  @override
  State<GreenBranchBuilder> createState() => _GreenBranchBuilderState();
}

class _GreenBranchBuilderState extends State<GreenBranchBuilder> {
  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final List<MetroStation> greenBranch = metroStations
            .where((element) => element.branchType == BranchType.greenBranch)
            .toList();
        return Column(
          children: greenBranch
              .map((station) => Column(children: [
                    InkWell(
                      highlightColor: Colors.green,
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Цікава інформація про метро'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(station.iconImage),
                              Text('Глибина метро ${station.depth}м'),
                              station.transitData?.isTransitToBlue ?? false
                                  ? const Text('Перехід на Площу Льва Толстого')
                                  : station.transitData?.isTransit ?? false
                                      ? const Text('Перехід на Театральну')
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
                          color: station.transitData?.isTransitToBlue ?? false
                              ? Colors.blue
                              : station.transitData?.isTransit ?? false
                                  ? Colors.red
                                  : Colors.green.withOpacity(0.7),
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
                                  const Expanded(
                                      flex: 1, child: Icon(Icons.add_circle))
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
                                const Expanded(flex: 1, child: Icon(Icons.add_circle))
                              ]),
                      ),
                    ),
                    Container(
                        height: 13.965,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.green.shade900.withOpacity(0.2))),
                  ]))
              .toList(),
        );
      });
}

