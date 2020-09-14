import 'package:agricare/data/calculate_history_list.dart';
import 'package:agricare/data/method_utils.dart';
import 'package:flutter/material.dart';

class CalculateHistoryPage extends StatefulWidget {
  static final String route = "CalculateHistoryPage";

  CalculateHistoryPage({Key key}) : super(key: key);

  @override
  _CalculateHistoryPageState createState() => _CalculateHistoryPageState();
}

class _CalculateHistoryPageState extends State<CalculateHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: HistoryList(),
    );
  }
}

class HistoryList extends StatelessWidget {
  final List<History> allList = History.historyList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: allList.length,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 140,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    allList[index].image,
                    width: 50,
                    height: 100,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          allList[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          allList[index].date,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          allList[index].season,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          allList[index].amount,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(height: 0),
        ),
      ),
    );
  }
}
