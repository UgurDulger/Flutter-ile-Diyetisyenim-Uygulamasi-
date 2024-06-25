// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCJ1BS1PVCOMB3bU5Z7FwBMULjjx4voong',
    appId: '1:221054761371:web:e24f22faba885c06b6c93e',
    messagingSenderId: '221054761371',
    projectId: 'diyetisyenim-ca6ec',
    authDomain: 'diyetisyenim-ca6ec.firebaseapp.com',
    storageBucket: 'diyetisyenim-ca6ec.appspot.com',
    measurementId: 'G-C1541V35WT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmXRFjtxsCD9lV4iMsOiIsM7ltsDTJTJ4',
    appId: '1:221054761371:android:5b060ba15139f8fbb6c93e',
    messagingSenderId: '221054761371',
    projectId: 'diyetisyenim-ca6ec',
    storageBucket: 'diyetisyenim-ca6ec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHDI_fXBTSTnY__P7za_o3tIPmE1L6zrk',
    appId: '1:221054761371:ios:842436c679efe9beb6c93e',
    messagingSenderId: '221054761371',
    projectId: 'diyetisyenim-ca6ec',
    storageBucket: 'diyetisyenim-ca6ec.appspot.com',
    iosClientId: '221054761371-eqkpttup94gnscfgpdl126msjgjcfmf3.apps.googleusercontent.com',
    iosBundleId: 'com.example.diyetisyenim',
  );
}
