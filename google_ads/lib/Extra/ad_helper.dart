// import 'dart:io';

// class AdHelper {
//   static String get bannerAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-3940256099942544/2934735716';
//     } else {
//       throw UnsupportedError("unsupported Platform");
//     }
//   }

//   static String get interstitialAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/1033173712';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-3940256099942544/4411468910';
//     } else {
//       throw UnsupportedError("unsupported Platform");
//     }
//   }

//   static String get rewardedAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/8673189370';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-3940256099942544/7552160883';
//     } else {
//       throw new UnsupportedError('Unsupported platform');
//     }
//   }
// }

// import 'dart:io';

// class AdHelper {
//   static String get bannerAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else {
//       throw UnsupportedError("unsupported Platform");
//     }
//   }

//   static String get interstitialAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else {
//       throw UnsupportedError("unsupported Platform");
//     }
//   }

//   static String get rewardedAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else if (Platform.isIOS) {
//       return 'ca-app-pub-2229980869355172/9521933508';
//     } else {
//       throw new UnsupportedError('Unsupported platform');
//     }
//   }
// }

import 'dart:io';

class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/4411468910";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/5224354917";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1712485313";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
