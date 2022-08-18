import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  List<String> items;
  String selectedItem;
  String hint;
  CustomDropDown({this.items, this.selectedItem, this.hint});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: widget.selectedItem,
        hint: Text(widget.hint),
        items: widget.items.map(
          (item) {
            return DropdownMenuItem(
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            );
          },
        ).toList(),
        onChanged: (item) {
          setState(() {
            widget.selectedItem = item;
          });
        });
  }
}
