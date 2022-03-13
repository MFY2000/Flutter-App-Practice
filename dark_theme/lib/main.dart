import 'package:dark_theme/Screen/hotel_app_theme.dart';
import 'package:dark_theme/Screen/hotel_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KOLACHI',
        theme: HotelAppTheme.buildLightTheme(),
        darkTheme: HotelAppTheme.buildDarkTheme(),
        themeMode: ThemeMode.system,
        home: HotelHomeScreen());
  }
}
