import 'package:agricare/pages/calculate_history_page.dart';
import 'package:agricare/pages/calculate_page.dart';
import 'package:agricare/pages/notification_page.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:flutter/material.dart';

class MainFragment extends StatefulWidget {
  MainFragment({Key key}) : super(key: key);

  @override
  _MainFragmentState createState() => _MainFragmentState();
}

class _MainFragmentState extends State<MainFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.white,
                  child: ClipPath(
                    child: Container(
                      color: Colors.green,
                    ),
                    clipper: CurvedClipper(),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: WeatherWidget(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: MainCategoryWidget()),
          ),
        ],
      ),
    );
  }
}

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '33°',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Sunny 33 / 26°C',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.cloud,
                size: 30.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/08',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Sun',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/09',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.filter_drama,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Mon',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/10',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Tue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/11',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.cloud,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Wed',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/12',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Thu',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '6/13',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name.notify,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Name.notifyText,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class MainCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Container(
                height: 110,
                width: 110,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Icon(
                          Icons.search,
                          size: 50,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(
                          Name.search,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, NotificationPage.route),
                child: Container(
                  height: 110,
                  width: 110,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Icon(
                                Icons.notifications,
                                size: 50,
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                Name.notification,
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipOval(
                            child: Container(
                              width: 16,
                              height: 16,
                              color: Colors.red,
                              alignment: Alignment.center,
                              child: Text(
                                '5',
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, CalculateHistoryPage.route),
                child: Container(
                  height: 110,
                  width: 110,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Icon(
                                Icons.insert_chart,
                                size: 50,
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                Name.afterCalculate,
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipOval(
                            child: Container(
                              width: 16,
                              height: 16,
                              color: Colors.red,
                              alignment: Alignment.center,
                              child: Text(
                                '3',
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, CalculatePage.route),
                child: Container(
                  height: 110,
                  width: 110,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Icon(
                          Icons.library_add,
                          size: 50,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(
                          Name.beforeCalculate,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height + 30, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
