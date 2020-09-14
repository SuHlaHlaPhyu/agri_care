class Order {
  //--- Name Of order
  final String name;

  //-- image
  final String image;

  //--- price
  final String price;

  //--- weight
  final String weight;

  Order({this.name, this.image, this.price, this.weight});

  static List<Order> orderList() {
    var list = new List<Order>();

    list.add(new Order(
        name: "စိမ်းစိုလွင်",
        price: "10,000 Ks/Kg",
        weight: "Compound - 15:15:15",
        image: "assets/images/shop/1.jpg"));
    list.add(new Order(
        name: "ခေတ်တောင်သူ",
        price: "12,000 Ks/Kg",
        weight: "Lime",
        image: "assets/images/shop/2.jpg"));
    list.add(new Order(
        name: "မဟာ",
        price: "10,000 Ks/Kg",
        weight: "Trichoderma",
        image: "assets/images/shop/3.jpg"));
    list.add(new Order(
        name: "မင်းတပါး",
        price: "12,000 Ks/Kg",
        weight: "Compound - 15:15:15",
        image: "assets/images/shop/4.jpg"));
    list.add(new Order(
        name: "ရွှေတောင်သူ",
        price: "10,000 Ks/Kg",
        weight: "Trichoderma",
        image: "assets/images/shop/5.jpg"));
    list.add(new Order(
        name: "စိမ်းစိုလွင်",
        price: "12,000 Ks/Kg",
        weight: "Limes",
        image: "assets/images/shop/1.jpg"));
    list.add(new Order(
        name: "ခေတ်တောင်သူ",
        price: "10,000 Ks/Kg",
        weight: "Compound - 15:15:15",
        image: "assets/images/shop/2.jpg"));

    return list;
  }
}
