import 'package:agricare/data/loan_list.dart';
import 'package:flutter/material.dart';

class LoanFragment extends StatefulWidget {
  LoanFragment({Key key}) : super(key: key);

  @override
  _LoanFragmentState createState() => _LoanFragmentState();
}

class _LoanFragmentState extends State<LoanFragment> {
  final List<Loan> allList = Loan.loanList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'ချေးငွေ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0 / 1.0,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: allList.length,
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              allList[index].image,
                            ),
                          ),
                          Center(
                            child: Text(
                              allList[index].name,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
