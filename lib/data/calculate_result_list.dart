class CalculateResultList {
  //--- name of result
  final String name;

  final String weight;

  //--- acre
  final String acre;

  //--- price
  final String price;

  CalculateResultList({this.name, this.weight, this.acre, this.price});

  static List<CalculateResultList> resultList() {
    var list = new List<CalculateResultList>();

    list.add(new CalculateResultList(
        name: "Compound - 15:15:15",
        weight: "150 Kg",
        acre: "10 Acres",
        price: "ကျသင့်ငွေ 100,000 Ks"));

    list.add(new CalculateResultList(
        name: "Lime",
        weight: "150 Kg",
        acre: "10 Acres",
        price: "ကျသင့်ငွေ 100,000 Ks"));

    list.add(new CalculateResultList(
        name: "Trichoderma",
        weight: "150 Kg",
        acre: "10 Acres",
        price: "ကျသင့်ငွေ 100,000 Ks"));

    list.add(new CalculateResultList(
        name: "Lime",
        weight: "150 Kg",
        acre: "10 Acres",
        price: "ကျသင့်ငွေ 100,000 Ks"));

    return list;
  }
}
