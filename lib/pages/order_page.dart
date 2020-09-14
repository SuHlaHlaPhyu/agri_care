import 'package:agricare/data/method_utils.dart';
import 'package:agricare/widgets/order_widget.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  static final String route = "OrderPage";

  OrderPage({Key key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'အမှာစာတင်ရန် သင်ကြိုက်နှစ်သက်သည့်ဆိုင်များကို',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'ရွေးချယ်နိုင်သည်',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          OrderWidget(),
        ],
      ),
    );
  }
}
