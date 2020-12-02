import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_ui_flutter/model/shoes_model.dart';

class ShoesImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shoesModel = Provider.of<ShoesModel>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        //heightで上下指定しないとPositioned時にエラー：RenderStack object was given an infinite size during layout.
        height: 220,
        child: Stack(
          children: <Widget>[
            Positioned(bottom: 5, right: 3, child: ShoesShadow()),
            Hero(
              tag: 'shoes',
              child: Image(
                image: AssetImage(shoesModel.assetsImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoesShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      //影の傾き
      angle: -0.5,
      child: Container(
        width: 190,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
