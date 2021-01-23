import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_ui_flutter/model/shoes_model.dart';
import 'package:shoes_shop_ui_flutter/screen/desc_screen.dart';
import 'screen/shoes_screen.dart';

//YouTubeチャンネル　配信者　https://www.youtube.com/c/Utter_Flutter/featured
//動画リンク。https://www.youtube.com/watch?v=M1HOKEOODFG3


void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ShoesModel(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
