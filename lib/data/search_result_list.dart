class SearchResult {
  //--- Name Of shop
  final String name;

  //-- image
  final String image;

  //--- price
  final String price;

  //--- info
  final String info;

  SearchResult({this.name, this.image, this.price,this.info});

  static List<SearchResult> resultList() {
    var list = new List<SearchResult>();

    list.add(new SearchResult(
        name: "ငှက်ကြီးတောင်",
        info: " ၁၈ SC",
        price: "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/1.jpg"));
    list.add(new SearchResult(
        name: "ယူနာတီ",
        info: "၅၀ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/2.jpg"));
    list.add(new SearchResult(
        name: "ဘက်တား",
        info: "၇၀၀ WDG",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/3.jpg"));
    list.add(new SearchResult(
        name: "အလန်း",
        info: "၅၀ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/4.jpg"));
    list.add(new SearchResult(
        name: "မက်တယ်",
        info: "၇၂ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/5.jpg"));
    list.add(new SearchResult(
        name: "ဇွန်ဘီ",
        info: "၇၀၀ WDG",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/1.jpg"));
    list.add(new SearchResult(
        name: "ယူနာတီ",
        info: "၅၀ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/2.jpg"));
    list.add(new SearchResult(
        name: "ဘက်တား",
        info: "၇၀၀ WDG",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/3.jpg"));
    list.add(new SearchResult(
        name: "အလန်း",
        info: "၅၀ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/4.jpg"));
    list.add(new SearchResult(
        name: "မက်တယ်",
        info: "၇၂ SC",
        price:  "၂၀၀၀ ကျပ် / PC",
        image: "assets/images/medicine/5.jpg"));


    return list;
  }




}
