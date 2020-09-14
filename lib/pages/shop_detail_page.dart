import 'package:agricare/data/method_utils.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:agricare/data/search_result_list.dart';
import 'package:agricare/data/shop_list.dart';
import 'package:flutter/material.dart';

class ShopDetailPage extends StatefulWidget {
  static final String route = "ShopDetailPage";

  ShopDetailPage({Key key}) : super(key: key);

  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  final List<Shop> allList = Shop.shopList();
  int index;

  @override
  Widget build(BuildContext context) {
    index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: Method.homeAppBar(context),
      body: Column(
        children: [
          _shopCardWidget(),
          Divider(color: Colors.grey),
          _searchWidget(),
          _searchResultWidget(),
        ],
      ),
    );
  }

  Widget _searchWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintText: Name.searchText,
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              onPressed: () {},
            )),
      ),
    );
  }

  Widget _shopCardWidget() {
    return ListTile(
      leading: ClipPath(
        child: Image.asset(
          allList[index].image,
          width: 60,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        clipper: ShapeBorderClipper(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
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
            fontWeight: FontWeight.bold,
            fontSize: Theme.of(context).textTheme.bodyText2.fontSize),
      ),
    );
  }

  Widget _searchResultWidget() {
    final List<SearchResult> allList = SearchResult.resultList();
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height),
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 6.0,
        ),
        itemCount: allList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Image.asset(
                        allList[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Text(allList[index].name)),
                Expanded(flex: 1, child: Text(allList[index].info)),
                Expanded(flex: 1, child: Text(allList[index].price)),
              ],
            ),
          );
        },
      ),
    );
  }
}
