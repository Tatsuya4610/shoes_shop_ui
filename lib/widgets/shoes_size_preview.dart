import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/screen/desc_screen.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_image.dart';
import 'package:shoes_shop_ui_flutter/widgets/shoes_size.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool fullScreen;
  ShoesSizePreview({
    this.fullScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (fullScreen) ? 0 : 30,
        vertical: (fullScreen) ? 0 : 5,
      ),
      child: InkWell(
        onTap: (fullScreen)
            ? null
            : () {
                Navigator.of(context).pushNamed(DescScreen.id);
              },
        child: Container(
          width: double.infinity,
          height: (fullScreen) ? 380 : 430,
          decoration: BoxDecoration(
              color: Color(0xffFF8D468),
              borderRadius: (fullScreen)
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  : BorderRadius.circular(50)),
          child: Column(
            children: <Widget>[
              ShoesImage(),
              SizedBox(height: 10),
              if (!fullScreen) ShoesSize(),
            ],
          ),
        ),
      ),
    );
  }
}
