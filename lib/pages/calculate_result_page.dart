import 'package:agricare/data/agriCareButton.dart';
import 'package:agricare/data/method_utils.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:agricare/widgets/calculate_result_widget.dart';
import 'package:flutter/material.dart';

class CalculateResultPage extends StatefulWidget {
  static final String route = "CalculateResultPage";
  CalculateResultPage({Key key}) : super(key: key);

  @override
  _CalculateResultPageState createState() => _CalculateResultPageState();
}

class _CalculateResultPageState extends State<CalculateResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: CalculateResultWidget(),
          ),
          Expanded(
            flex: 2,
            child: _resultWidget(),
          ),
        ],
      ),
    );
  }

  Widget _resultWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Name.totalAmount,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'သင်မလိုအပ်သည့် ပစ္စည်းများကို uncheck လုပ်၍',
        ),
        Text('ဖြုတ်ပစ်နိုင်သည်။'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AgriCareButton(
              height: 40,
              width: 120,
              text: Name.discard,
              textColor: Colors.black,
              backgroundColor: Color(0xFF66BB6A),
              cornerRadius: 20,
              elevation: 2,
              onTap: () {},
            ),
            AgriCareButton(
              height: 40,
              width: 120,
              text: Name.save,
              textColor: Colors.black,
              backgroundColor: Color(0xFF66BB6A),
              cornerRadius: 20,
              elevation: 2,
              onTap: () {
                Method.showResultDialog(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}
