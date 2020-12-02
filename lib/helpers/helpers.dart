import 'package:flutter/services.dart' as services;

void changeStatusLight() { //上部時刻等のテキスト白
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.light);
}

void changeStatusDark() {//上部時刻等のテキスト黒。
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
}