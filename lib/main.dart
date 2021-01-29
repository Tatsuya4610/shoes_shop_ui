import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_ui_flutter/model/shoes_model.dart';
import 'package:shoes_shop_ui_flutter/screen/desc_screen.dart';
import 'screen/shoes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ShoesModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ShoesShopUI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ShoesScreen(),
        ),
        routes: {
          DescScreen.id: (context) => DescScreen(),
        },
      ),
    );
  }
}
