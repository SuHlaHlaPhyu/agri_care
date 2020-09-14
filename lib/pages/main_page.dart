import 'package:agricare/fragments/loan_fragment.dart';
import 'package:agricare/fragments/main_fragment.dart';
import 'package:agricare/fragments/shop_fragment.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static final String route = "MainPage";
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> _widgetList = [
    MainFragment(),
    ShopFragment(),
    LoanFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF66BB6A),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text(
              Name.main,
              style: TextStyle(
                fontFamily: 'pyidaungsu',
                fontSize: 13.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              Name.shops,
              style: TextStyle(
                fontFamily: 'pyidaungsu',
                fontSize: 13.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text(
              Name.loan,
              style: TextStyle(
                fontFamily: 'pyidaungsu',
                fontSize: 13.0,
              ),
            ),
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xff808080),
        onTap: _selectIndex,
      ),
    );
  }

  void _selectIndex(int index) {
    setState(() => _currentIndex = index);
  }
}
