import 'package:agricare/pages/shop_detail_page.dart';
import 'package:agricare/data/shop_list.dart';
import 'package:flutter/material.dart';

class ShopFragment extends StatefulWidget {
  ShopFragment({Key key}) : super(key: key);

  @override
  _ShopFragmentState createState() => _ShopFragmentState();
}

class _ShopFragmentState extends State<ShopFragment> {
  final List<Shop> allList = Shop.shopList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Shop List',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: allList.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: ClipPath(
                  child: Image.asset(
                    allList[index].image,
                    width: 60,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fill,
                  ),
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                title: Text(
                  allList[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodyText1.fontSize),
                ),
                subtitle: Text(
                  allList[index].location,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyText2.fontSize),
                ),
                onTap: () => Navigator.pushNamed(context, ShopDetailPage.route,
                    arguments: index));
          }),
    );
  }
}
