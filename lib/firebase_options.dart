// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB4dmMLjVbM0fFOHVCUPj8OxTjSKbzaIPc',
    appId: '1:418088605171:web:cc9f7dd6359a82c0266e86',
    messagingSenderId: '418088605171',
    projectId: 'market-mate-b9376',
    authDomain: 'market-mate-b9376.firebaseapp.com',
    storageBucket: 'market-mate-b9376.appspot.com',
    measurementId: 'G-2RH0EQ98NF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApE6Gv906FcjKNdMkrXlnDPX8HX_j_mF4',
    appId: '1:418088605171:android:40d280ca1a0195a6266e86',
    messagingSenderId: '418088605171',
    projectId: 'market-mate-b9376',
    storageBucket: 'market-mate-b9376.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB25TYJl3IOoj8u4T9GNvgOKQHZObpfxpk',
    appId: '1:418088605171:ios:b517781940019ce9266e86',
    messagingSenderId: '418088605171',
    projectId: 'market-mate-b9376',
    storageBucket: 'market-mate-b9376.appspot.com',
    iosBundleId: 'com.patriolivadev.marketMate',
  );
}