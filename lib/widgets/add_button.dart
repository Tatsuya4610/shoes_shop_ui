import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String text;
  final Color color;
  AddButton({
    @required this.text,
    @required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 130,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
