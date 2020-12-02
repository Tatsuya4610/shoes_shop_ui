import 'package:flutter/material.dart';

class BottomLikeCartSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonShading(
            icon: Icon(
              Icons.star,
              color: Colors.red,
              size: 25,
            ),
          ),
          ButtonShading(
            icon: Icon(
              Icons.add_chart,
              color: Colors.grey,
              size: 25,
            ),
          ),
          ButtonShading(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonShading extends StatelessWidget {
  final Icon icon;
  ButtonShading({@required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: IconButton(
        icon: icon,
        onPressed: () {},
      ),
    );
  }
}
