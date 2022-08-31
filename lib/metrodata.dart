import 'package:flutter/material.dart';
import 'package:ucheba/widgets.dart';

class IconAssets {
  static const String demiivska = 'assets/demiivska.jpg';
  static const String heroiv = 'assets/heroiv_dnipra.jpg';
  static const String holosiivska = 'assets/holosiivska.jpg';
  static const String horl = 'assets/horl.jpg';
  static const String ipodrom = 'assets/ipodrom.jpg';
  static const String kontraktova = 'assets/kontraktova.jpg';
  static const String lva = 'assets/lva.jpg';
  static const String lybidska = 'assets/lybidska.jpg';
  static const String maidan = 'assets/maidan.jpg';
  static const String minska = 'assets/minska.jpg';
  static const String obolon = 'assets/obolon.jpg';
  static const String olimpiyska = 'assets/olimpiyska.jpg';
  static const String palats = 'assets/palats.jpg';
  static const String pochaina = 'assets/pochaina.jpg';
  static const String poshtova = 'assets/poshtova.jpg';
  static const String tarasa = 'assets/tarasa.jpg';
  static const String teremky = 'assets/teremky.jpg';
  static const String vasylkivska = 'assets/vasylkivska.jpg';
  static const String vystavkoviy = 'assets/vystavkoviy.jpg';
}

class MetroStation {
  final String ukrName;
  final String engName;
  final double depth;
  final String iconImage;
  final TransitData? transitData;
  final BranchType branchType;

  const MetroStation({
    required this.branchType,
    this.transitData,
    required this.depth,
    required this.iconImage,
    required this.ukrName,
    required this.engName,
  });
}

List<MetroStation> metroStations = [
  const MetroStation(
    ukrName: 'Героїв Дніпра',
    engName: 'Heroiv Dnipra',
    iconImage: IconAssets.heroiv,
    depth: 5,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Мінська',
    engName: 'Minska`',
    iconImage: IconAssets.minska,
    depth: 8,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Оболонь',
    engName: 'Obolon',
    iconImage: IconAssets.obolon,
    depth: 6.5,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Почайна',
    engName: 'Pochaina',
    iconImage: IconAssets.pochaina,
    depth: 6,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Тараса Шевченка',
    engName: 'Tarasa Shechenka',
    iconImage: IconAssets.tarasa,
    depth: 1000,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Контрактова Площа',
    engName: 'Kontraktova Ploshcha',
    iconImage: IconAssets.kontraktova,
    depth: 8,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Поштова Площа',
    engName: 'Poshtova Ploshcha',
    iconImage: IconAssets.poshtova,
    depth: 10,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Майдан Незалежності',
    engName: 'Maidan Nezalezhnosti',
    iconImage: IconAssets.maidan,
    depth: 60,
    transitData: TransitData(isTransit: true, transitStations: []),
    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Площа Льва Толстого',
    engName: 'Ploshcha Lva Tolstogo',
    iconImage: IconAssets.lva,
    depth: 55,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Олімпійська',
    engName: 'Olimpiyska',
    iconImage: IconAssets.olimpiyska,
    depth: 37,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Палац Україна',
    engName: 'Palats Ukraina',
    iconImage: IconAssets.palats,
    depth: 32,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Либідська',
    engName: 'Lybidska',
    iconImage: IconAssets.lybidska,
    depth: 22,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Деміївська',
    engName: 'Demiivska',
    iconImage: IconAssets.demiivska,
    depth: 12,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Голосіївська',
    engName: 'Holosiivska',
    iconImage: IconAssets.holosiivska,
    depth: 12,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Васильківська',
    engName: 'Vasylkivska',
    iconImage: IconAssets.vasylkivska,
    depth: 8,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Виставковий Центр',
    engName: 'Horl`s Center',
    iconImage: IconAssets.horl,
    depth: 8,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Іподром',
    engName: 'Ipodrom',
    iconImage: IconAssets.ipodrom,
    depth: 12,

    branchType: BranchType.blueBranch
  ),
  const MetroStation(
    ukrName: 'Теремки',
    engName: 'Teremky',
    iconImage: IconAssets.teremky,
    depth: 15,

    branchType: BranchType.blueBranch
  ),
];

enum BranchType{
  blueBranch,
  redBranch,
  greenBranch
}
class TransitData{
  final bool isTransit;
  final List<MetroStation> transitStations;

  const TransitData({required this.transitStations, required this.isTransit});

}