import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/helpers/helpers.dart';
import 'package:shoes_shop_ui_flutter/widgets/bottom_like_cart_setting.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_description.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_size_preview.dart';
import 'package:shoes_shop_ui_flutter/widgets/choice_color.dart';
import 'package:shoes_shop_ui_flutter/widgets/buy_button.dart';

class DescScreen extends StatelessWidget {
  static const id = 'DescScreen';
  @override
  Widget build(BuildContext context) {
    changeStatusLight(); //上部時刻等のテキスト白。
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ShoesSizePreview(fullScreen: true),
                      Positioned(
                        left: 10,
                        top: 20,
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 60,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            changeStatusDark();
                          },
                        ),
                      ),
                    ],
                  ),
                  ShoesDescription(
                    title: 'NIKE Sports Shoes',
                    description:
                        'NIKEのスポーツシューズです。NIKEのスポーツシューズです。NIKEのスポーツシューズです。NIKEのスポーツシューズです。',
                  ),
                  BuyButton(),
                  ChoiceColor(),
                  BottomLikeCartSetting(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


