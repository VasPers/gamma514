import 'package:flutter/material.dart';
import 'package:ucheba/metrodata.dart';


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
              const Expanded(
                  flex: 1, child: Icon(Icons.add_circle))
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
