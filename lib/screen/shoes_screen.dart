import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/widgets/add_cart_button.dart';
import 'package:shoes_shop_ui_flutter/widgets/custom_appbar.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_size_preview.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_description.dart';
import 'package:shoes_shop_ui_flutter/helpers/helpers.dart';

class ShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusDark(); //上部時刻等のテキスト黒。
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(text: '商品を探す'),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ShoesSizePreview(
                    fullScreen: false,
                  ),
                  ShoesDescription(
                    title: 'NIKE Sports Shoes',
                    description:
                        'NIKEのスポーツシューズです。NIKEのスポーツシューズです。NIKEのスポーツシューズです。NIKEのスポーツシューズです。',
                  ),
                ],
              ),
            ),
          ),
          AddCartButton(price: 5000),
        ],
      ),
    );
  }
}
