import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HotelAppTheme {
  static ThemeData buildLightTheme() {
    const Color primaryColor = Color(0xff54D3C2);
    const Color secondaryColor = Color(0xff54D3C2);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    return ThemeData(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      // textTheme: buildLightTheme,
      // primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );
  }

  static ThemeData buildDarkTheme() {
    const Color primaryColor = Color(0xff54D3C2);
    const Color secondaryColor = Color(0xff54D3C2);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    return ThemeData(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      indicatorColor: Color.fromARGB(255, 0, 0, 0),
      splashColor: Color.fromARGB(60, 95, 95, 95),
      splashFactory: InkRipple.splashFactory,
      canvasColor: Color.fromARGB(255, 0, 0, 0),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: TextTheme(
        
      ),
      // textTheme: buildLightTheme,
      // primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );

  }

  
}

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
