class Studio {
  final String id;
  final String name;

  const Studio(this.id, this.name);
}

class Studios {
  static const Studio ginza = Studio('0001', '銀座スタジオ');
  static const Studio aoyama = Studio('0002', '青山スタジオ');
  static const Studio ebisu = Studio('0003', '恵比寿スタジオ');
  static const Studio shinjuku = Studio('0004', '新宿スタジオ');
  static const Studio sakae = Studio('0005', '栄スタジオ');
  static const Studio ikebukuro = Studio('0006', '池袋スタジオ');
  static const Studio haneda = Studio('0007', '羽田スタジオ');
  static const Studio umeda = Studio('0008', '梅田スタジオ');

  static const List<Studio> all = [
    ebisu,
    shinjuku,
    ginza,
    aoyama,
    sakae,
    ikebukuro,
    haneda,
    umeda
  ];
}
