import 'package:flutter/material.dart';
import 'package:ucheba/metrodata.dart';


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
              const Expanded(
                  flex: 1, child: Icon(Icons.add_circle))
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