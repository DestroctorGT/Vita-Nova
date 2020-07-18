import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'const.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vita Nova',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: kHomeScreen,
      getPages: [
        GetPage(name: kHomeScreen, page: () => HomeScreen()),
      ],
    );
  }
}
