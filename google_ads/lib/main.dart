import 'package:flutter/material.dart';
import 'package:google_ads/googleAds.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}
