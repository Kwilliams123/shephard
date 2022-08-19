import 'package:flutter/material.dart';

class YesOrNoOption extends StatefulWidget {
  String valueSelected;
  String title;

  YesOrNoOption(this.title, this.valueSelected);

  @override
  State<YesOrNoOption> createState() => _YesOrNoOptionState();
}

class _YesOrNoOptionState extends State<YesOrNoOption> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final title = Text(
      widget.title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );

    final yesOrNoParent = Container(
      width: size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Yes'),
            leading: Radio(
              value: 'yes',
              groupValue: widget.valueSelected,
              onChanged: (String value) {
                setState(
                  () {
                    widget.valueSelected = value;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: const Text('No'),
            leading: Radio(
              value: 'no',
              groupValue: widget.valueSelected,
              onChanged: (String value) {
                setState(
                  () {
                    widget.valueSelected = value;
                  },
                );
              },
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const SizedBox(
          height: 10,
        ),
        yesOrNoParent,
      ],
    );
  }
}
