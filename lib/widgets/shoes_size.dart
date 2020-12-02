import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_ui_flutter/model/shoes_model.dart';

class ShoesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ShoesSizeBox(25.0),
          _ShoesSizeBox(25.5),
          _ShoesSizeBox(26.0),
          _ShoesSizeBox(26.5),
          _ShoesSizeBox(27.0),
        ],
      ),
    );
  }
}

class _ShoesSizeBox extends StatelessWidget {
  final double number;
  _ShoesSizeBox(
    this.number,
  );
  @override
  Widget build(BuildContext context) {
    final shoesModel = Provider.of<ShoesModel>(context);
    return GestureDetector(
      onTap: () {
        final shoesModel = Provider.of<ShoesModel>(context, listen: false);
        shoesModel.shoesSizes = number;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${number.toString().replaceAll('.0', '')}', //doubleで小数点がある場合のみ表示。
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: (number == shoesModel.shoesSize)
                ? Colors.white
                : Color(0xffF1A23A),
          ),
        ),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: (number == shoesModel.shoesSize)
              ? Color(0xffF1A23A)
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xffF1A23A),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }
}
