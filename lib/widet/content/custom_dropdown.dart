import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  List<String> items;
  String selectedItem;
  String hint;
  String label;
  CustomDropDown({this.items, this.selectedItem, this.hint, this.label});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      widget.label,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );

    final dropDownButton = Container(
      padding: EdgeInsets.only(
        left: 12,
        top: 5,
        bottom: 5,
        right: 10,
      ),
      child: DropdownButton(
        value: widget.selectedItem,
        hint: Text(widget.hint),
        underline: Container(),
        isExpanded: true,
        iconSize: 30,
        items: widget.items.map(
          (item) {
            return DropdownMenuItem<String>(
              value: item,
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
          setState(
            () {
              widget.selectedItem = item;
            },
          );
        },
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText,
        const SizedBox(
          height: 6,
        ),
        dropDownButton,
      ],
    );
  }
}
