class Studio {
  final String id;
  final String name;

  const Studio(this.id, this.name);
}

class Studios {
  static const Studio ginza = Studio('0001', '銀座');
  static const Studio aoyama = Studio('0002', '青山');
  static const Studio ebisu = Studio('0003', '恵比寿');
  static const Studio shinjuku = Studio('0004', '新宿');
  static const Studio sakae = Studio('0005', '栄');
  static const Studio ikebukuro = Studio('0006', '池袋');
  static const Studio haneda = Studio('0007', '羽田');
  static const Studio umeda = Studio('0008', '梅田');
}