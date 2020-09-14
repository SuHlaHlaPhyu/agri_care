import 'package:agricare/data/agriCareButton.dart';
import 'package:agricare/data/method_utils.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:agricare/widgets/calculate_step1_widget.dart';
import 'package:agricare/widgets/calculate_step2_widget.dart';
import 'package:agricare/widgets/calculate_step3_widget.dart';
import 'package:agricare/widgets/calculate_step4_widget.dart';
import 'package:flutter/material.dart';

import 'calculate_result_page.dart';

class CalculatePage extends StatefulWidget {
  static final String route = "CalculatePage";

  CalculatePage({Key key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  int step;

  @override
  void initState() {
    super.initState();
    step = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: step == 1 ? 40.0 : 30.0,
                      width: step == 1 ? 40.0 : 30.0,
                      child: Center(
                          child: Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: step == 1
                              ? Border.all(color: Colors.green[700], width: 2.0)
                              : null),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: Colors.green,
                            height: 36,
                          )),
                    ),
                    Container(
                      height: step == 2 ? 40.0 : 30.0,
                      width: step == 2 ? 40.0 : 30.0,
                      child: Center(
                          child: Icon(
                        Icons.cloud,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: step == 2
                              ? Border.all(color: Colors.green[700], width: 2.0)
                              : null),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: Colors.green,
                            height: 36,
                          )),
                    ),
                    Container(
                      height: step == 3 ? 40.0 : 30.0,
                      width: step == 3 ? 40.0 : 30.0,
                      child: Center(
                          child: Icon(
                        Icons.subject,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: step == 3
                              ? Border.all(color: Colors.green[700], width: 2.0)
                              : null),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: Colors.green,
                            height: 36,
                          )),
                    ),
                    Container(
                      height: step == 4 ? 40.0 : 30.0,
                      width: step == 4 ? 40.0 : 30.0,
                      child: Center(
                          child: Icon(
                        Icons.payment,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: step == 4
                              ? Border.all(color: Colors.green[700], width: 2.0)
                              : null),
                    )
                  ],
                ),
                step == 1
                    ? CalculateStep1Widget()
                    : step == 2
                        ? CalculateStep2Widget()
                        : step == 3
                            ? CalculateStep3Widget()
                            : CalculateStep4Widget(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40.0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: step != 1
                          ? AgriCareButton(
                              width: 120,
                              text: Name.backward,
                              textColor: Colors.black,
                              backgroundColor: Color(0xFF66BB6A),
                              cornerRadius: 20,
                              elevation: 2,
                              onTap: () {
                                setState(() {
                                  step--;
                                });
                              },
                            )
                          : SizedBox(),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 1,
                      child: AgriCareButton(
                        height: 30,
                        width: 120,
                        text: step != 4 ? Name.forward : Name.toCalculate,
                        textColor: Colors.black,
                        backgroundColor: Color(0xFF66BB6A),
                        cornerRadius: 20,
                        elevation: 2,
                        onTap: () {
                          if (step != 4) {
                            setState(() {
                              step++;
                            });
                          } else
                            Navigator.pushNamed(
                              context,
                              CalculateResultPage.route,
                            );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
