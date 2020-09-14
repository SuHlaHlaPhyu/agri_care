import 'package:agricare/pages/order_page.dart';
import 'package:agricare/pages/register_page.dart';
import 'package:flutter/material.dart';

import 'name_utils.dart';

class Method {
  static void showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        children: <Widget>[
          SimpleDialogOption(
            child: Text(Name.farmer),
            onPressed: () => Navigator.pushNamed(context, RegisterPage.route),
          ),
          Divider(),
          SimpleDialogOption(
            child: Text(Name.shop),
            onPressed: () => Navigator.pushNamed(context, RegisterPage.route),
          ),
        ],
      ),
    );
  }

  static void showResultDialog(BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        children: <Widget>[
          SimpleDialogOption(
            child: Center(child: Text(Name.startCultivate)),
            onPressed: () {},
          ),
          Divider(),
          SimpleDialogOption(
            child: Center(child: Text(Name.loanProcess)),
            onPressed: () {},
          ),
          Divider(),
          SimpleDialogOption(
            child: Center(child: Text(Name.order)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  static AppBar homeAppBar(BuildContext context) {
    return AppBar(
      titleSpacing: -10.0,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.green),
          ),
          Text(
            'BACK',
            style: TextStyle(color: Colors.yellow[800], fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
