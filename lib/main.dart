import 'package:agricare/pages/calculate_history_page.dart';
import 'package:agricare/pages/calculate_page.dart';
import 'package:agricare/pages/calculate_result_page.dart';
import 'package:agricare/pages/home_page.dart';
import 'package:agricare/pages/main_page.dart';
import 'package:agricare/pages/notification_page.dart';
import 'package:agricare/pages/order_page.dart';
import 'package:agricare/pages/register_page.dart';
import 'package:agricare/pages/shop_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyHomePage.route,
      routes: {
        MyHomePage.route: (_) => MyHomePage(),
        CalculateHistoryPage.route: (_) => CalculateHistoryPage(),
        CalculateResultPage.route: (_) => CalculateResultPage(),
        CalculatePage.route: (_) => CalculatePage(),
        MainPage.route: (_) => MainPage(),
        NotificationPage.route: (_) => NotificationPage(),
        OrderPage.route: (_) => OrderPage(),
        RegisterPage.route: (_) => RegisterPage(),
        ShopDetailPage.route: (_) => ShopDetailPage(),
      },
    );
  }
}
