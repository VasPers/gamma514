class IconAssets {
  static const String demiivska = 'assets/blue_branch_images/demiivska.jpg';
  static const String heroiv = 'assets/blue_branch_images/heroiv_dnipra.jpg';
  static const String holosiivska = 'assets/blue_branch_images/holosiivska.jpg';
  static const String horl = 'assets/horl.jpg';
  static const String ipodrom = 'assets/blue_branch_images/ipodrom.jpg';
  static const String kontraktova = 'assets/blue_branch_images/kontraktova.jpg';
  static const String lva = 'assets/blue_branch_images/lva.jpg';
  static const String lybidska = 'assets/blue_branch_images/lybidska.jpg';
  static const String maidan = 'assets/blue_branch_images/maidan.jpg';
  static const String minska = 'assets/blue_branch_images/minska.jpg';
  static const String obolon = 'assets/blue_branch_images/obolon.jpg';
  static const String olimpiyska = 'assets/blue_branch_images/olimpiyska.jpg';
  static const String palats = 'assets/blue_branch_images/palats.jpg';
  static const String pochaina = 'assets/blue_branch_images/pochaina.jpg';
  static const String poshtova = 'assets/blue_branch_images/poshtova.jpg';
  static const String tarasa = 'assets/blue_branch_images/tarasa.jpg';
  static const String teremky = 'assets/blue_branch_images/teremky.jpg';
  static const String vasylkivska = 'assets/blue_branch_images/vasylkivska.jpg';
  static const String vystavkoviy = 'assets/blue_branch_images/vystavkoviy.jpg';
}


List<MetroStation> metroStations = [
  const MetroStation(
      ukrName: 'Героїв Дніпра',
      engName: 'Heroiv Dnipra',
      iconImage: IconAssets.heroiv,
      depth: 5,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Мінська',
      engName: 'Minska`',
      iconImage: IconAssets.minska,
      depth: 8,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Оболонь',
      engName: 'Obolon',
      iconImage: IconAssets.obolon,
      depth: 6.5,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Почайна',
      engName: 'Pochaina',
      iconImage: IconAssets.pochaina,
      depth: 6,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Тараса Шевченка',
      engName: 'Tarasa Shechenka',
      iconImage: IconAssets.tarasa,
      depth: 1000,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Контрактова Площа',
      engName: 'Kontraktova Ploshcha',
      iconImage: IconAssets.kontraktova,
      depth: 8,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Поштова Площа',
      engName: 'Poshtova Ploshcha',
      iconImage: IconAssets.poshtova,
      depth: 10,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Майдан Незалежності',
      engName: 'Maidan Nezalezhnosti',
      iconImage: IconAssets.maidan,
      depth: 60,
      transitData: TransitData(isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Площа Льва Толстого',
      engName: 'Ploshcha Lva Tolstogo',
      iconImage: IconAssets.lva,
      depth: 55,
      transitData: TransitData(isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Олімпійська',
      engName: 'Olimpiyska',
      iconImage: IconAssets.olimpiyska,
      depth: 37,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Палац Україна',
      engName: 'Palats Ukraina',
      iconImage: IconAssets.palats,
      depth: 32,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Либідська',
      engName: 'Lybidska',
      iconImage: IconAssets.lybidska,
      depth: 22,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Деміївська',
      engName: 'Demiivska',
      iconImage: IconAssets.demiivska,
      depth: 12,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Голосіївська',
      engName: 'Holosiivska',
      iconImage: IconAssets.holosiivska,
      depth: 12,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Васильківська',
      engName: 'Vasylkivska',
      iconImage: IconAssets.vasylkivska,
      depth: 8,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Виставковий Центр',
      engName: 'Horl`s Center',
      iconImage: IconAssets.horl,
      depth: 8,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Іподром',
      engName: 'Ipodrom',
      iconImage: IconAssets.ipodrom,
      depth: 12,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Теремки',
      engName: 'Teremky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.blueBranch),
  const MetroStation(
      ukrName: 'Академмістечко',
      engName: 'Academmisctechko',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Житомирська',
      engName: 'Zhytomyrska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Святошин',
      engName: 'Svyatoshin',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Нивки',
      engName: 'Nyvky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Берестейська',
      engName: 'Beresteyska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Шулявська',
      engName: 'Shulyavska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Політехнічний інститут',
      engName: 'Politekhnichniy institute',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Вокзальна',
      engName: 'Vokzalna',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Університет',
      engName: 'Universitet',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Театральна',
      engName: 'Teatralna',
      iconImage: IconAssets.teremky,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Хрещатик',
      engName: 'Khreshchatyk',
      iconImage: IconAssets.teremky,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Арсенальна',
      engName: 'Arsenalna',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Дніпро',
      engName: 'Dnipro',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Гідропарк',
      engName: 'Hidropark',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Лівобережна',
      engName: 'Livoberezhna',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Дарниця',
      engName: 'Darnitsia',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Чернігівська',
      engName: 'Chernihivska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Лісова',
      engName: 'Lisova',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.redBranch),
  const MetroStation(
      ukrName: 'Сирець',
      engName: 'Syrets',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Дорогожичі',
      engName: 'Dorogozhichi',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Лук`янівська',
      engName: 'Luk`yanivska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Золоті ворота',
      engName: 'Zoloti vorota',
      iconImage: IconAssets.teremky,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Палац спорту',
      engName: 'Palats sportu',
      iconImage: IconAssets.teremky,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Кловська',
      engName: 'Klovska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Печерська',
      engName: 'Pecherska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Дружби народів',
      engName: 'Druzhbi narodiv',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Видубичі',
      engName: 'Vydubichi',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Славутич',
      engName: 'Slavutych',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Осокорки',
      engName: 'Osokorky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Позняки',
      engName: 'Poznyaky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Харківська',
      engName: 'Harkivska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Вирлиця',
      engName: 'Vyrlytsia',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Бориспільська',
      engName: 'Boryspilska',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
  const MetroStation(
      ukrName: 'Червоний хутір',
      engName: 'Chervoniy hutir',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.greenBranch),
];

enum BranchType { blueBranch, redBranch, greenBranch }


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

class TransitData {
  final bool isTransit;
  final List<MetroStation> transitStations;
  final bool? isTransitToBlue;
  final bool? isTransitToGreen;

  const TransitData({this.isTransitToBlue, this.isTransitToGreen,required this.transitStations, required this.isTransit});
}
