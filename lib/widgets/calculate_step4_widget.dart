import 'package:agricare/data/name_utils.dart';
import 'package:flutter/material.dart';

class CalculateStep4Widget extends StatefulWidget {
  CalculateStep4Widget({Key key}) : super(key: key);

  @override
  _CalculateStep4WidgetState createState() => _CalculateStep4WidgetState();
}

class _CalculateStep4WidgetState extends State<CalculateStep4Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Name.acre),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: '00',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
