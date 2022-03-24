import 'package:flutter/material.dart';
import 'package:google_ads/Extra/ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: bannerAds(body: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class bannerAds extends StatefulWidget {
  Widget body;
  bannerAds({Key? key, required this.body}) : super(key: key);
  @override
  State<bannerAds> createState() => _bannerAdsState();
}

class _bannerAdsState extends State<bannerAds> {
  double width = 480;
  double height = 712;

  // late BannerAd _bannerAd;
  // bool _isBannerAdReady = false;


  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        widget.body,
        Positioned(
            bottom: 0,
            right: 40,
            left: 40,
            child: Container(
              color: Colors.black,
              width: width * 0.75,
              height: height * 0.1,
              child: const Image(image:  NetworkImage(""),),
            ))
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_ads/Extra/ad_helper.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Mobile App Instance
//   MobileAds.instance.initialize();
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late BannerAd _bannerAd;
//   bool _isBannerAdReady = false;

//   @override
//   void initState() {
//     super.initState();
//     _bannerAd = BannerAd(
//         size: AdSize.mediumRectangle,
//         adUnitId: AdHelper.bannerAdUnitId,
//         listener: BannerAdListener(onAdLoaded: (_) {
//           setState(() {
//             _isBannerAdReady = true;
//           });
//         }, onAdFailedToLoad: (ad, LoadAdError error) {
//           print("Failed to Load A Banner Ad${error.message}");
//           _isBannerAdReady = false;
//           ad.dispose();
//         }),
//         request: AdRequest())
//       ..load();
//     //Interstitial Ads
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _bannerAd.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter Mobile Ads"),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 //Simple Container
//                 Container(
//                   height: 70,
//                   color: Colors.red,
//                 ),
//                 SizedBox(height: 20),
//                 //Simple Container
//                 Container(
//                   height: 70,
//                   color: Colors.indigo,
//                 ),
//                 SizedBox(height: 20),
//                 if (_isBannerAdReady)
//                   Container(
//                     height: _bannerAd.size.height.toDouble(),
//                     width: _bannerAd.size.width.toDouble(),
//                     child: AdWidget(ad: _bannerAd),
//                   ),
//                 SizedBox(height: 20),
//                 Container(
//                   height: 70,
//                   color: Colors.deepOrange,
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   height: 70,
//                   color: Colors.purple,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
