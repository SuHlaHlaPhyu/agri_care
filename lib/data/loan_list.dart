class Loan {
  //--- Name Of Loan
  final String name;

  //-- image
  final String image;

  Loan({this.name, this.image});

  static List<Loan> loanList() {
    var list = new List<Loan>();

    list.add(new Loan(
        name: "Dawn Mircofinance",
        image: "assets/images/finance/drawn_microfinance.jpg"));
    list.add(new Loan(
        name: "MAHAR BAWGA \n FINANCE",
        image: "assets/images/finance/mahar_bawga.jpg"));
    list.add(new Loan(
        name: "Maha Agriculture",
        image: "assets/images/finance/maha_agriculture.jpg"));
    list.add(new Loan(
        name: "YOMA bank",
        image: "assets/images/finance/yoma_bank.jpg"));
    list.add(new Loan(
        name: "Myanmar Agricultural \n Development Bank",
        image: "assets/images/finance/myanmar_agriculture.jpg"));
    
    return list;
  }
}
