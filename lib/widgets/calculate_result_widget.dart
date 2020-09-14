import 'package:agricare/data/calculate_result_list.dart';
import 'package:flutter/material.dart';

class CalculateResultWidget extends StatefulWidget {
  CalculateResultWidget({Key key}) : super(key: key);

  @override
  _CalculateResultWidgetState createState() => _CalculateResultWidgetState();
}

class _CalculateResultWidgetState extends State<CalculateResultWidget> {
  final List<CalculateResultList> allList = CalculateResultList.resultList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text(
                  'Tranche 1',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: _resultWidget(4),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text(
                  'Tranche 2',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: _resultWidget(1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text(
                  'Tranche 3',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: _resultWidget(4),
              ),
            ],
          )),
    );
  }

  List<Widget> _resultWidget(int size) {
    var resultWidgets = List<Widget>();
    for (int i = 0; i < size; i++) {
      resultWidgets.add(Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 170,
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.topRight, child: Icon(Icons.check)),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            allList[i].name,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            allList[i].weight,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(allList[i].acre)),
                ),
                Divider(),
                Align(
                  alignment: Alignment.center,
                  child: Text(allList[i].price),
                ),
              ],
            ),
          ),
        ),
      ));
    }

    return resultWidgets;
  }
}
