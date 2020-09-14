import 'package:agricare/data/name_utils.dart';
import 'package:agricare/data/season.dart';
import 'package:flutter/material.dart';

class CalculateStep2Widget extends StatefulWidget {
  CalculateStep2Widget({Key key}) : super(key: key);

  @override
  _CalculateStep2WidgetState createState() => _CalculateStep2WidgetState();
}

class _CalculateStep2WidgetState extends State<CalculateStep2Widget> {
  Season season;

  @override
  void initState() {
    super.initState();
    season = Season.HOT;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Name.season),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                SizedBox(
                  height: 20.0,
                  width: 20.0,
                  child: Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: Season.HOT,
                    activeColor: Colors.yellow,
                    groupValue: season,
                    onChanged: (s) => setState(() => season = s),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  Name.hotSeason,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: Season.RAIN,
                  activeColor: Colors.yellow,
                  groupValue: season,
                  onChanged: (s) => setState(() => season = s),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                Name.rainySeason,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: Season.COLD,
                  activeColor: Colors.yellow,
                  groupValue: season,
                  onChanged: (s) => setState(() => season = s),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                Name.coldSeason,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
