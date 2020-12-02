import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/widgets/add_button.dart';

class AddCartButton extends StatelessWidget {
  final int price;
  AddCartButton({this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              '¥$price円',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            AddButton(text: 'カートへ追加',color: Colors.orange,),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
