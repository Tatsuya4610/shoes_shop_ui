import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_ui_flutter/model/shoes_model.dart';
import 'package:shoes_shop_ui_flutter/widgets/add_button.dart';

class ChoiceColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ボタンで画像の色変更可能。',style: TextStyle(fontSize: 12),),
            Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 90,
                          child: _ButtonColor(
                            color: Color(0xffC6D642),
                            index: 4,
                            imageUrl: 'assets/image/verde.png',
                          )),
                      Positioned(
                          left: 60,
                          child: _ButtonColor(
                            color: Color(0xffFFAD29),
                            index: 3,
                            imageUrl: 'assets/image/amarillo.png',
                          )),
                      Positioned(
                          left: 30,
                          child: _ButtonColor(
                            color: Color(0xff2099F1),
                            index: 2,
                            imageUrl: 'assets/image/azul.png',
                          )),
                      _ButtonColor(
                        color: Color(0xff364D56),
                        index: 1,
                        imageUrl: 'assets/image/negro.png',
                      ),
                    ],
                  ),
                ),
                AddButton(
                  text: '色の選択確定',
                  color: Color(0xffFFC675),
                ),
              ],
            ),
          ],
        ));
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String imageUrl;
  _ButtonColor({
    @required this.color,
    @required this.index,
    @required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 200),
      duration: Duration(milliseconds: 300),
      child: InkWell(
        onTap: () {
          final shoesModel = Provider.of<ShoesModel>(context, listen: false);
          shoesModel.assetsImages = imageUrl;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
