class History {
  //--- Name Of history
  final String name;

  //-- image
  final String image;

  //--- date
  final String date;

  //-- amount
  final String amount;

  //-- season
  final String season;

  History({this.name, this.image, this.date, this.amount, this.season});

  static List<History> historyList() {
    var list = new List<History>();

    list.add(new History(
      name: "ကြက်သွန်",
      image: "assets/images/crop/onion.jpg",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      amount: "150,000 Ks",
    ));
    list.add(new History(
      name: "ငရုပ်သီး",
      image: "assets/images/crop/chili.jpg",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      amount: "150,000 Ks",
    ));
    list.add(new History(
      name: "ခရမ်းချဥ်သီး",
      image: "assets/images/crop/tomato.jpg",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      amount: "150,000 Ks",
    ));

    return list;
  }
}
