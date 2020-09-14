import 'package:agricare/data/method_utils.dart';
import 'package:agricare/data/notification_list.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static final String route = "NotificationPage";

  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<NotificationList> allList = NotificationList.notiList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: allList.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        allList[index].name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        allList[index].date,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 11),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        allList[index].detail,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
