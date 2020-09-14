import 'package:agricare/data/list_item.dart';
import 'package:agricare/data/name_utils.dart';
import 'package:flutter/material.dart';

class CalculateStep3Widget extends StatefulWidget {
  CalculateStep3Widget({Key key}) : super(key: key);

  @override
  _CalculateStep3WidgetState createState() => _CalculateStep3WidgetState();
}

class _CalculateStep3WidgetState extends State<CalculateStep3Widget> {
  List<ListItem> _dropdownItems = [
    ListItem(1, Name.chooseCrop),
    ListItem(2, "Item 1"),
    ListItem(3, "Item 2"),
    ListItem(4, "Item 3")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
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
          Text(Name.crop),
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
        ],
      ),
    );
  }
}
