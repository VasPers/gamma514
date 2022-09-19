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
  static const String akadem = 'assets/red_branch_images/akademmistechko.jpg';
  static const String arsenal = 'assets/red_branch_images/arsenalna.jpg';
  static const String berest = 'assets/red_branch_images/beresteyska.jpg';
  static const String chernihivska =
      'assets/red_branch_images/chernihivska.jpg';
  static const String darnitsia = 'assets/red_branch_images/darnitsia.jpg';
  static const String dnipro = 'assets/red_branch_images/dnipro.jpg';
  static const String hidropark = 'assets/red_branch_images/hidropark.jpg';
  static const String khreschyatik = 'assets/red_branch_images/khreshyatyk.jpg';
  static const String lisova = 'assets/red_branch_images/lisova.jpg';
  static const String livoberezhna =
      'assets/red_branch_images/livoberezhna.jpg';
  static const String nyvky = 'assets/red_branch_images/nyvky.jpg';
  static const String politeh = 'assets/red_branch_images/politeh.jpg';
  static const String shulyavka = 'assets/red_branch_images/shulyavska.jpg';
  static const String svyatoshin = 'assets/red_branch_images/svyatoshin.jpg';
  static const String teatralna = 'assets/red_branch_images/teatralna.jpg';
  static const String universitet = 'assets/red_branch_images/universitet.jpg';
  static const String vokzalna = 'assets/red_branch_images/vokzalna.jpg';
  static const String zhytomir = 'assets/red_branch_images/zhytomyrska.jpg';
  static const String boryspilskia =
      'assets/green_branch_images/boryspilska.jpg';
  static const String chervoniy = 'assets/green_branch_images/chervoniy.jpg';
  static const String dorogozh = 'assets/green_branch_images/dorogoshichi.jpg';
  static const String druzhby = 'assets/green_branch_images/drushby.jpg';
  static const String kharkivska = 'assets/green_branch_images/harkivska.jpg';
  static const String klovska = 'assets/green_branch_images/klovska.jpg';
  static const String lukianovska =
      'assets/green_branch_images/lukianovska.jpg';
  static const String osokorky = 'assets/green_branch_images/osokorky.jpg';
  static const String palatssportu =
      'assets/green_branch_images/palatssrportu.jpg';
  static const String pecherska = 'assets/green_branch_images/pecherska.jpg';
  static const String poznyaki = 'assets/green_branch_images/pozniaky.jpg';
  static const String slavutych = 'assets/green_branch_images/slavutych.jpg';
  static const String syrets = 'assets/green_branch_images/syrets.jpg';
  static const String vydubichi = 'assets/green_branch_images/vydubichi.jpg';
  static const String vyrlytsia = 'assets/green_branch_images/vyrlytsia.jpg';
  static const String zoloti = 'assets/green_branch_images/zoloti.jpg';
}
List<MetroStation> favouriteData =  [];
List<MetroStation> metroStations = [
  const MetroStation(
      ukrName: 'Героїв Дніпра',
      engName: 'Heroiv Dnipra',
      iconImage: IconAssets.heroiv,
      depth: 5,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Мінська',
      engName: 'Minska`',
      iconImage: IconAssets.minska,
      depth: 8,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Оболонь',
      engName: 'Obolon',
      iconImage: IconAssets.obolon,
      depth: 6.5,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Почайна',
      engName: 'Pochaina',
      iconImage: IconAssets.pochaina,
      depth: 6,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Тараса Шевченка',
      engName: 'Tarasa Shechenka',
      iconImage: IconAssets.tarasa,
      depth: 1000,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Контрактова Площа',
      engName: 'Kontraktova Ploshcha',
      iconImage: IconAssets.kontraktova,
      depth: 8,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Поштова Площа',
      engName: 'Poshtova Ploshcha',
      iconImage: IconAssets.poshtova,
      depth: 10,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Майдан Незалежності',
      engName: 'Maidan Nezalezhnosti',
      iconImage: IconAssets.maidan,
      depth: 60,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Площа Льва Толстого',
      engName: 'Ploshcha Lva Tolstogo',
      iconImage: IconAssets.lva,
      depth: 55,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Олімпійська',
      engName: 'Olimpiyska',
      iconImage: IconAssets.olimpiyska,
      depth: 37,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Палац Україна',
      engName: 'Palats Ukraina',
      iconImage: IconAssets.palats,
      depth: 32,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Либідська',
      engName: 'Lybidska',
      iconImage: IconAssets.lybidska,
      depth: 22,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Деміївська',
      engName: 'Demiivska',
      iconImage: IconAssets.demiivska,
      depth: 12,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Голосіївська',
      engName: 'Holosiivska',
      iconImage: IconAssets.holosiivska,
      depth: 12,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Васильківська',
      engName: 'Vasylkivska',
      iconImage: IconAssets.vasylkivska,
      depth: 8,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Виставковий Центр',
      engName: 'Horl`s Center',
      iconImage: IconAssets.horl,
      depth: 8,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Іподром',
      engName: 'Ipodrom',
      iconImage: IconAssets.ipodrom,
      depth: 12,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Теремки',
      engName: 'Teremky',
      iconImage: IconAssets.teremky,
      depth: 15,
      branchType: BranchType.blueBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Академмістечко',
      engName: 'Academmisctechko',
      iconImage: IconAssets.akadem,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Житомирська',
      engName: 'Zhytomyrska',
      iconImage: IconAssets.zhytomir,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Святошин',
      engName: 'Svyatoshin',
      iconImage: IconAssets.svyatoshin,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Нивки',
      engName: 'Nyvky',
      iconImage: IconAssets.nyvky,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Берестейська',
      engName: 'Beresteyska',
      iconImage: IconAssets.berest,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Шулявська',
      engName: 'Shulyavska',
      iconImage: IconAssets.shulyavka,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Політехнічний інститут',
      engName: 'Politekhnichniy institute',
      iconImage: IconAssets.politeh,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Вокзальна',
      engName: 'Vokzalna',
      iconImage: IconAssets.vokzalna,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Університет',
      engName: 'Universitet',
      iconImage: IconAssets.universitet,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Театральна',
      engName: 'Teatralna',
      iconImage: IconAssets.teatralna,
      depth: 15,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToGreen: true),
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Хрещатик',
      engName: 'Khreshchatyk',
      iconImage: IconAssets.khreschyatik,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Арсенальна',
      engName: 'Arsenalna',
      iconImage: IconAssets.arsenal,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Дніпро',
      engName: 'Dnipro',
      iconImage: IconAssets.dnipro,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Гідропарк',
      engName: 'Hidropark',
      iconImage: IconAssets.hidropark,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Лівобережна',
      engName: 'Livoberezhna',
      iconImage: IconAssets.livoberezhna,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Дарниця',
      engName: 'Darnitsia',
      iconImage: IconAssets.darnitsia,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Чернігівська',
      engName: 'Chernihivska',
      iconImage: IconAssets.chernihivska,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Лісова',
      engName: 'Lisova',
      iconImage: IconAssets.lisova,
      depth: 15,
      branchType: BranchType.redBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Сирець',
      engName: 'Syrets',
      iconImage: IconAssets.syrets,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Дорогожичі',
      engName: 'Dorogozhichi',
      iconImage: IconAssets.dorogozh,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Лук`янівська',
      engName: 'Luk`yanivska',
      iconImage: IconAssets.lukianovska,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Золоті ворота',
      engName: 'Zoloti vorota',
      iconImage: IconAssets.zoloti,
      depth: 15,
      transitData: TransitData(isTransit: true, transitStations: []),
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Палац спорту',
      engName: 'Palats sportu',
      iconImage: IconAssets.palatssportu,
      depth: 15,
      transitData: TransitData(
          isTransit: true, transitStations: [], isTransitToBlue: true),
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Кловська',
      engName: 'Klovska',
      iconImage: IconAssets.klovska,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Печерська',
      engName: 'Pecherska',
      iconImage: IconAssets.pecherska,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Дружби народів',
      engName: 'Druzhbi narodiv',
      iconImage: IconAssets.druzhby,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Видубичі',
      engName: 'Vydubichi',
      iconImage: IconAssets.vydubichi,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Славутич',
      engName: 'Slavutych',
      iconImage: IconAssets.slavutych,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Осокорки',
      engName: 'Osokorky',
      iconImage: IconAssets.osokorky,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Позняки',
      engName: 'Poznyaky',
      iconImage: IconAssets.poznyaki,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Харківська',
      engName: 'Harkivska',
      iconImage: IconAssets.kharkivska,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Вирлиця',
      engName: 'Vyrlytsia',
      iconImage: IconAssets.vyrlytsia,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Бориспільська',
      engName: 'Boryspilska',
      iconImage: IconAssets.boryspilskia,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
  const MetroStation(
      ukrName: 'Червоний хутір',
      engName: 'Chervoniy hutir',
      iconImage: IconAssets.chervoniy,
      depth: 15,
      branchType: BranchType.greenBranch,
      favourite: false),
];

enum BranchType { blueBranch, redBranch, greenBranch }

class MetroStation {
  final String ukrName;
  final String engName;
  final double depth;
  final String iconImage;
  final TransitData? transitData;
  final BranchType branchType;
  final bool favourite;

  const MetroStation({
    required this.favourite,
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

  const TransitData(
      {this.isTransitToBlue,
      this.isTransitToGreen,
      required this.transitStations,
      required this.isTransit});
}


