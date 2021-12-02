import 'package:app_n3/colors/cores.dart';
import 'package:flutter/material.dart';

class ButtonWithLabel extends StatefulWidget {
  ButtonWithLabel(
      {Key? key, required this.label, this.icon, required this.onPressed, required this.isSelected})
      : super(key: key);
  final String label;
  final IconData? icon;
  final Function onPressed;
  final bool isSelected;

  @override
  _ButtonWithLabelState createState() => _ButtonWithLabelState();
}

class _ButtonWithLabelState extends State<ButtonWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.2,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: widget.isSelected ? Cores.verde : Cores.preto,
          style: BorderStyle.solid,
        ),
      ),
      child: TextButton.icon(
        onPressed: () {
          widget.onPressed();
        },
        icon: Icon(
          widget.icon,
          size: 50,
          color: Colors.black,
        ),
        label: Text(
          widget.label,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
