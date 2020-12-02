import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:shoes_shop_ui_flutter/widgets/add_button.dart';

class BuyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Text(
            '¥5000円',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Spacer(),
          Bounce(
            delay: Duration(microseconds: 700),
            from: 8,
            child: AddButton(
              text: 'カートへ追加',
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
