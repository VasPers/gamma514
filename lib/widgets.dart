import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MetroStation> metroStations = [
      const MetroStation(
        ukrName: 'Героїв Дніпра',
        engName: 'Heroiv Dnipra',
        iconImage: 'assets/Heroiv_Dnipra.jpg',
        depth: 5,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Мінська',
        engName: 'Minska`',
        iconImage: 'assets/Minska.jpg',
        depth: 8,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Оболонь',
        engName: 'Obolon',
        iconImage: 'assets/Obolon.jpg',
        depth: 6.5,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Почайна',
        engName: 'Pochaina',
        iconImage: 'assets/Pochaina.jpg',
        depth: 6,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Тараса Шевченка',
        engName: 'Tarasa Shechenka',
        iconImage: 'assets/Tarasa.jpg',
        depth: 1000,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Контрактова Площа',
        engName: 'Kontraktova Ploshcha',
        iconImage: 'assets/Kontraktova.jpg',
        depth: 8,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Поштова Площа',
        engName: 'Poshtova Ploshcha',
        iconImage: 'assets/Poshtova.jpg',
        depth: 10,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Майдан Незалежності',
        engName: 'Maidan Nezalezhnosti',
        iconImage: 'assets/Maidan.jpg',
        depth: 60,
        isTransit: true,
      ),
      const MetroStation(
        ukrName: 'Площа Льва Толстого',
        engName: 'Ploshcha Lva Tolstogo',
        iconImage: 'assets/LvaTolstogo.jpg',
        depth: 55,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Олімпійська',
        engName: 'Olimpiyska',
        iconImage: 'assets/Olimpiyska.jpg',
        depth: 37,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Палац Україна',
        engName: 'Palats Ukraina',
        iconImage: 'assets/PalatsaUkraine.jpg',
        depth: 32,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Либідська',
        engName: 'Lybidska',
        iconImage: 'assets/Lybidska.jpg',
        depth: 22,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Деміївська',
        engName: 'Demiivska',
        iconImage: 'assets/Demiivska.jpg',
        depth: 12,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Голосіївська',
        engName: 'Holosiivska',
        iconImage: 'assets/Holosiivska.jpg',
        depth: 12,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Васильківська',
        engName: 'Vasylkivska',
        iconImage: 'Vasylkivska.jpg',
        depth: 8,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Виставковий Центр',
        engName: 'Horl`s Center',
        iconImage: 'assets/Horl.jpg',
        depth: 8,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Іподром',
        engName: 'Ipodrom',
        iconImage: 'assets/Ipodrom.jpg',
        depth: 12,
        isTransit: false,
      ),
      const MetroStation(
        ukrName: 'Теремки',
        engName: 'Teremky',
        iconImage: 'assets/Teremky.jpg',
        depth: 15,
        isTransit: false,
      ),
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'MetroMap',
                textAlign: TextAlign.center,
              ),
              actions: [
                IconButton(
                    onPressed: null,
                    icon: SvgPicture.network(
                        'https://www.svgrepo.com/show/43991/kiev-metro-logo.svg'))
              ],
            ),
            body: Column(
              children: metroStations
                  .map((station) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: station.isTransit
                              ? const BorderRadius.all(Radius.elliptical(20, 0))
                              : const BorderRadius.all(Radius.circular(220)),
                          color: station.isTransit
                              ? Colors.red
                              : Colors.blueAccent.withOpacity(0.7),
                        ),
                        width: double.infinity,
                        child: station.isTransit
                            ? Row(
                                children: [
                                  Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 150),
                                        child: ClickableIconDialog(
                                            station: station),
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
                                        SizedBox(height: 10,),
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
                                Center(
                                  child: ClickableIconDialog(station: station),
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
                      ))
                  .toList(),
            )));
  }
}

class MetroStation {
  final String ukrName;
  final String engName;
  final double depth;
  final String iconImage;
  final bool isTransit;

  const MetroStation({
    required this.isTransit,
    required this.depth,
    required this.iconImage,
    required this.ukrName,
    required this.engName,
  });
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

// child: Container(
// width: 10,
// height: 10,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: station.isTransit? Colors.red : Colors.blueGrey,
// ))
