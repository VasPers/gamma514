class IconAssets {
  static String demiivska = 'assets/blue_branch_images/demiivska.jpg';
  static String heroiv = 'assets/blue_branch_images/heroiv_dnipra.jpg';
  static String holosiivska = 'assets/blue_branch_images/holosiivska.jpg';
  static String horl = 'assets/horl.jpg';
  static String ipodrom = 'assets/blue_branch_images/ipodrom.jpg';
  static String kontraktova = 'assets/blue_branch_images/kontraktova.jpg';
  static String lva = 'assets/blue_branch_images/lva.jpg';
  static String lybidska = 'assets/blue_branch_images/lybidska.jpg';
  static String maidan = 'assets/blue_branch_images/maidan.jpg';
  static String minska = 'assets/blue_branch_images/minska.jpg';
  static String obolon = 'assets/blue_branch_images/obolon.jpg';
  static String olimpiyska = 'assets/blue_branch_images/olimpiyska.jpg';
  static String palats = 'assets/blue_branch_images/palats.jpg';
  static String pochaina = 'assets/blue_branch_images/pochaina.jpg';
  static String poshtova = 'assets/blue_branch_images/poshtova.jpg';
  static String tarasa = 'assets/blue_branch_images/tarasa.jpg';
  static String teremky = 'assets/blue_branch_images/teremky.jpg';
  static String vasylkivska = 'assets/blue_branch_images/vasylkivska.jpg';
  static String vystavkoviy = 'assets/blue_branch_images/vystavkoviy.jpg';
  static String akadem = 'assets/red_branch_images/akademmistechko.jpg';
  static String arsenal = 'assets/red_branch_images/arsenalna.jpg';
  static String berest = 'assets/red_branch_images/beresteyska.jpg';
  static String chernihivska = 'assets/red_branch_images/chernihivska.jpg';
  static String darnitsia = 'assets/red_branch_images/darnitsia.jpg';
  static String dnipro = 'assets/red_branch_images/dnipro.jpg';
  static String hidropark = 'assets/red_branch_images/hidropark.jpg';
  static String khreschyatik = 'assets/red_branch_images/khreshyatyk.jpg';
  static String lisova = 'assets/red_branch_images/lisova.jpg';
  static String livoberezhna = 'assets/red_branch_images/livoberezhna.jpg';
  static String nyvky = 'assets/red_branch_images/nyvky.jpg';
  static String politeh = 'assets/red_branch_images/politeh.jpg';
  static String shulyavka = 'assets/red_branch_images/shulyavska.jpg';
  static String svyatoshin = 'assets/red_branch_images/svyatoshin.jpg';
  static String teatralna = 'assets/red_branch_images/teatralna.jpg';
  static String universitet = 'assets/red_branch_images/universitet.jpg';
  static String vokzalna = 'assets/red_branch_images/vokzalna.jpg';
  static String zhytomir = 'assets/red_branch_images/zhytomyrska.jpg';
  static String boryspilskia = 'assets/green_branch_images/boryspilska.jpg';
  static String chervoniy = 'assets/green_branch_images/chervoniy.jpg';
  static String dorogozh = 'assets/green_branch_images/dorogoshichi.jpg';
  static String druzhby = 'assets/green_branch_images/drushby.jpg';
  static String kharkivska = 'assets/green_branch_images/harkivska.jpg';
  static String klovska = 'assets/green_branch_images/klovska.jpg';
  static String lukianovska = 'assets/green_branch_images/lukianovska.jpg';
  static String osokorky = 'assets/green_branch_images/osokorky.jpg';
  static String palatssportu = 'assets/green_branch_images/palatssrportu.jpg';
  static String pecherska = 'assets/green_branch_images/pecherska.jpg';
  static String poznyaki = 'assets/green_branch_images/pozniaky.jpg';
  static String slavutych = 'assets/green_branch_images/slavutych.jpg';
  static String syrets = 'assets/green_branch_images/syrets.jpg';
  static String vydubichi = 'assets/green_branch_images/vydubichi.jpg';
  static String vyrlytsia = 'assets/green_branch_images/vyrlytsia.jpg';
  static String zoloti = 'assets/green_branch_images/zoloti.jpg';
}

List<MetroStation> favouriteData = <MetroStation>[];

List<MetroStation> metroStations = [
  MetroStation(
      ukrName: 'Героїв Дніпра',
      engName: 'Heroiv Dnipra',
      iconImage: IconAssets.heroiv,
      depth: 5,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Мінська',
      engName: 'Minska`',
      iconImage: IconAssets.minska,
      depth: 8,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Оболонь',
      engName: 'Obolon',
      iconImage: IconAssets.obolon,
      depth: 6.5,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Почайна',
      engName: 'Pochaina',
      iconImage: IconAssets.pochaina,
      depth: 6,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Тараса Шевченка',
      engName: 'Tarasa Shechenka',
      iconImage: IconAssets.tarasa,
      depth: 1000,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Контрактова Площа',
      engName: 'Kontraktova Ploshcha',
      iconImage: IconAssets.kontraktova,
      depth: 8,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Поштова Площа',
      engName: 'Poshtova Ploshcha',
      iconImage: IconAssets.poshtova,
      depth: 10,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Майдан Незалежності',
      engName: 'Maidan Nezalezhnosti',
      iconImage: IconAssets.maidan,
      depth: 60,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Площа Льва Толстого',
      engName: 'Ploshcha Lva Tolstogo',
      iconImage: IconAssets.lva,
      depth: 55,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Олімпійська',
      engName: 'Olimpiyska',
      iconImage: IconAssets.olimpiyska,
      depth: 37,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Палац Україна',
      engName: 'Palats Ukraina',
      iconImage: IconAssets.palats,
      depth: 32,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Либідська',
      engName: 'Lybidska',
      iconImage: IconAssets.lybidska,
      depth: 22,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Деміївська',
      engName: 'Demiivska',
      iconImage: IconAssets.demiivska,
      depth: 12,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Голосіївська',
      engName: 'Holosiivska',
      iconImage: IconAssets.holosiivska,
      depth: 12,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Васильківська',
      engName: 'Vasylkivska',
      iconImage: IconAssets.vasylkivska,
      depth: 8,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Виставковий Центр',
      engName: 'Horl`s Center',
      iconImage: IconAssets.horl,
      depth: 8,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Іподром',
      engName: 'Ipodrom',
      iconImage: IconAssets.ipodrom,
      depth: 12,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Теремки',
      engName: 'Teremky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.blueBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Академмістечко',
      engName: 'Academmisctechko',
      iconImage: IconAssets.akadem,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Житомирська',
      engName: 'Zhytomyrska',
      iconImage: IconAssets.zhytomir,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Святошин',
      engName: 'Svyatoshin',
      iconImage: IconAssets.svyatoshin,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Нивки',
      engName: 'Nyvky',
      iconImage: IconAssets.nyvky,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Берестейська',
      engName: 'Beresteyska',
      iconImage: IconAssets.berest,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Шулявська',
      engName: 'Shulyavska',
      iconImage: IconAssets.shulyavka,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Політехнічний інститут',
      engName: 'Politekhnichniy institute',
      iconImage: IconAssets.politeh,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Вокзальна',
      engName: 'Vokzalna',
      iconImage: IconAssets.vokzalna,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Університет',
      engName: 'Universitet',
      iconImage: IconAssets.universitet,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Театральна',
      engName: 'Teatralna',
      iconImage: IconAssets.teatralna,
      depth: 15,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Хрещатик',
      engName: 'Khreshchatyk',
      iconImage: IconAssets.khreschyatik,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Арсенальна',
      engName: 'Arsenalna',
      iconImage: IconAssets.arsenal,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Дніпро',
      engName: 'Dnipro',
      iconImage: IconAssets.dnipro,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Гідропарк',
      engName: 'Hidropark',
      iconImage: IconAssets.hidropark,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Лівобережна',
      engName: 'Livoberezhna',
      iconImage: IconAssets.livoberezhna,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Дарниця',
      engName: 'Darnitsia',
      iconImage: IconAssets.darnitsia,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Чернігівська',
      engName: 'Chernihivska',
      iconImage: IconAssets.chernihivska,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Лісова',
      engName: 'Lisova',
      iconImage: IconAssets.lisova,
      depth: 15,
      branchType: BranchType.redBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Сирець',
      engName: 'Syrets',
      iconImage: IconAssets.syrets,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Дорогожичі',
      engName: 'Dorogozhichi',
      iconImage: IconAssets.dorogozh,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Лук`янівська',
      engName: 'Luk`yanivska',
      iconImage: IconAssets.lukianovska,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Золоті ворота',
      engName: 'Zoloti vorota',
      iconImage: IconAssets.zoloti,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Палац спорту',
      engName: 'Palats sportu',
      iconImage: IconAssets.palatssportu,
      depth: 15,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Кловська',
      engName: 'Klovska',
      iconImage: IconAssets.klovska,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Печерська',
      engName: 'Pecherska',
      iconImage: IconAssets.pecherska,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Дружби народів',
      engName: 'Druzhbi narodiv',
      iconImage: IconAssets.druzhby,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Видубичі',
      engName: 'Vydubichi',
      iconImage: IconAssets.vydubichi,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Славутич',
      engName: 'Slavutych',
      iconImage: IconAssets.slavutych,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Осокорки',
      engName: 'Osokorky',
      iconImage: IconAssets.osokorky,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Позняки',
      engName: 'Poznyaky',
      iconImage: IconAssets.poznyaki,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Харківська',
      engName: 'Harkivska',
      iconImage: IconAssets.kharkivska,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Вирлиця',
      engName: 'Vyrlytsia',
      iconImage: IconAssets.vyrlytsia,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Бориспільська',
      engName: 'Boryspilska',
      iconImage: IconAssets.boryspilskia,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
  MetroStation(
      ukrName: 'Червоний хутір',
      engName: 'Chervoniy hutir',
      iconImage: IconAssets.chervoniy,
      depth: 15,
      branchType: BranchType.greenBranch,
      isFavourite: false),
];

enum BranchType { blueBranch, redBranch, greenBranch }

class MetroStation {
  final String ukrName;
  final String engName;
  final double depth;
  final String iconImage;
  final TransitData? transitData;
  final BranchType branchType;
  bool isFavourite;

  MetroStation({
    required this.isFavourite,
    required this.branchType,
    this.transitData,
    required this.depth,
    required this.iconImage,
    required this.ukrName,
    required this.engName,
  });

  factory MetroStation.fromJson(Map<String, dynamic> json) => MetroStation(
      ukrName: json['ukrName'],
      engName: json['engName'],
      depth: json['depth'],
      iconImage: json['iconImage'],
      branchType: json['branchType'],
      isFavourite: json['isFavourite']);

  Map<String, dynamic> toJson() => {
        'ukrName': ukrName,
        'engName': engName,
        'depth': depth,
        'iconImage': iconImage,
        'branchType': branchType,
        'isFavourite': isFavourite
      };

  MetroStation copyWith({
    String? ukrName,
    String? engName,
    double? depth,
    String? iconImage,
    TransitData? transitData,
    BranchType? branchType,
    bool? isFavourite,
  }) {
    return MetroStation(
      ukrName: ukrName ?? this.ukrName,
      engName: engName ?? this.engName,
      depth: depth ?? this.depth,
      iconImage: iconImage ?? this.iconImage,
      transitData: transitData ?? this.transitData,
      branchType: branchType ?? this.branchType,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @override
  String toString() {
    return 'MetroStation{ukrName: $ukrName, engName: $engName, depth: $depth, iconImage: $iconImage, transitData: $transitData, branchType: $branchType, isFavourite: $isFavourite}';
  }
}

class TransitData {
  final bool isTransit;
  final List<MetroStation> transitStations;
  final bool? isTransitToBlue;
  final bool? isTransitToGreen;

  TransitData(
      {this.isTransitToBlue,
      this.isTransitToGreen,
      required this.transitStations,
      required this.isTransit});
}
