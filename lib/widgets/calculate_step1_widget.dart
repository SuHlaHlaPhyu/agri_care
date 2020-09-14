import 'package:agricare/data/list_item.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:flutter/material.dart';

class CalculateStep1Widget extends StatefulWidget {
  CalculateStep1Widget({Key key}) : super(key: key);

  @override
  _CalculateStep1WidgetState createState() => _CalculateStep1WidgetState();
}

class _CalculateStep1WidgetState extends State<CalculateStep1Widget> {
  List<ListItem> _dropdownItems = [
    ListItem(1, Name.region),
    ListItem(2, "Item 1"),
    ListItem(3, "Item 2"),
    ListItem(4, "Item 3")
  ];

  List<ListItem> _dropdownItems1 = [
    ListItem(1, Name.township),
    ListItem(2, "Item 1"),
    ListItem(3, "Item 2"),
    ListItem(4, "Item 3")
  ];

  List<ListItem> _dropdownItems2 = [
    ListItem(1, Name.villages),
    ListItem(2, "Item 1"),
    ListItem(3, "Item 2"),
    ListItem(4, "Item 3")
  ];

  List<ListItem> _dropdownItems3 = [
    ListItem(1, Name.village),
    ListItem(2, "ဒေသ"),
    ListItem(3, "ကျေးရွာအုပ်စု"),
    ListItem(4, "မြို့နယ်")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems1;
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems2;
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems3;

  ListItem _selectedItem;
  ListItem _selectedItem1;
  ListItem _selectedItem2;
  ListItem _selectedItem3;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;

    _dropdownMenuItems1 = buildDropDownMenuItems(_dropdownItems1);
    _selectedItem1 = _dropdownMenuItems1[0].value;

    _dropdownMenuItems2 = buildDropDownMenuItems(_dropdownItems2);
    _selectedItem2 = _dropdownMenuItems2[0].value;

    _dropdownMenuItems3 = buildDropDownMenuItems(_dropdownItems3);
    _selectedItem3 = _dropdownMenuItems3[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Name.cultivableLand),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _selectedItem,
                    items: _dropdownMenuItems,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _selectedItem1,
                    items: _dropdownMenuItems1,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem1 = value;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _selectedItem2,
                    items: _dropdownMenuItems2,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem2 = value;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _selectedItem3,
                    items: _dropdownMenuItems3,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem3 = value;
                      });
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
