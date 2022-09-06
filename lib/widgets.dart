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
                             bottomLeft:Radius.circular(10) ,
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

class BlueBranchBuilder extends StatelessWidget {
  const BlueBranchBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final List<MetroStation> blueMetroStation = metroStations
            .where((element) => element.branchType == BranchType.blueBranch)
            .toList();
        return Column(
          children: blueMetroStation
              .map((station) => Stack(children: [
                    Container(
                      height: 34.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900.withOpacity(0.5)),
                    ),
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
                        // margin: const EdgeInsets.symmetric(vertical: 4.8),
                        decoration: BoxDecoration(
                          borderRadius: station.transitData?.isTransit ?? false
                              ? const BorderRadius.all(Radius.elliptical(20, 0))
                              : const BorderRadius.all(Radius.circular(220)),
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
                                      child: Padding(
                                    padding: EdgeInsets.only(left: 150),
                                    child:
                                        Icon(Icons.circle, color: Colors.white),
                                  )),
                                  Expanded(
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
                                ],
                              )
                            : Row(children: [
                                Expanded(
                                    flex: 1,
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
                                    flex: 1,
                                    child: Text(
                                      station.engName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.left,
                                    )),
                              ]),
                      ),
                    ),
                  ]))
              .toList(),
        );
      });
}

class RedBranchBuilder extends StatelessWidget {
  const RedBranchBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final List<MetroStation> redBranch = metroStations
            .where((element) => element.branchType == BranchType.redBranch)
            .toList();
        return Column(
          children: redBranch
              .map((station) => Stack(children: [
                    Container(
                      height: 34.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red.shade900.withOpacity(0.2)),
                    ),
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
                        // margin: const EdgeInsets.symmetric(vertical: 4.8),
                        decoration: BoxDecoration(
                            borderRadius: station.transitData?.isTransit ??
                                    false
                                ? const BorderRadius.all(
                                    Radius.elliptical(20, 0))
                                : const BorderRadius.all(Radius.circular(220)),
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
                                      child: Padding(
                                    padding: EdgeInsets.only(left: 150),
                                    child:
                                        Icon(Icons.circle, color: Colors.white),
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
                                ],
                              )
                            : Row(children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      station.ukrName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.right,
                                    )),
                                const Center(
                                  child:
                                      Icon(Icons.circle, color: Colors.white),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      station.engName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.left,
                                    )),
                              ]),
                      ),
                    ),
                  ]))
              .toList(),
        );
      });
}

class GreenBranchBuilder extends StatelessWidget {
  const GreenBranchBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final List<MetroStation> greenBranch = metroStations
            .where((element) => element.branchType == BranchType.greenBranch)
            .toList();
        return Column(
          children: greenBranch
              .map((station) => Stack(children: [
                    Container(
                        height: 39.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.green.shade900.withOpacity(0.2))),
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
                        // margin: const EdgeInsets.symmetric(vertical: 6.9),
                        decoration: BoxDecoration(
                          borderRadius: station.transitData?.isTransit ?? false
                              ? const BorderRadius.all(Radius.elliptical(20, 0))
                              : const BorderRadius.all(Radius.circular(220)),
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
                                      child: Padding(
                                    padding: EdgeInsets.only(left: 150),
                                    child:
                                        Icon(Icons.circle, color: Colors.white),
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
                                ],
                              )
                            : Row(children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      station.ukrName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.right,
                                    )),
                                const Center(
                                  child:
                                      Icon(Icons.circle, color: Colors.white),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      station.engName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.left,
                                    )),
                              ]),
                      ),
                    ),
                  ]))
              .toList(),
        );
      });
}
