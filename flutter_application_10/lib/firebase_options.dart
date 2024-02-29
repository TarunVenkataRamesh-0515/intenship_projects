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
    apiKey: 'AIzaSyB42pSvVVPOEtg9RjkBrx67AH3ff6W609E',
    appId: '1:641764423051:web:42ddf52632e341e88feb8e',
    messagingSenderId: '641764423051',
    projectId: 'application-5c003',
    authDomain: 'application-5c003.firebaseapp.com',
    storageBucket: 'application-5c003.appspot.com',
    measurementId: 'G-SFVZ64NT5F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJfv1kMYI6yQm2haMoYZL4yQAoHwiajBY',
    appId: '1:641764423051:android:5dd6b04ade0ed5408feb8e',
    messagingSenderId: '641764423051',
    projectId: 'application-5c003',
    storageBucket: 'application-5c003.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsgMd_6lgznMPiu7cIujnf0_pXCSQ3_q4',
    appId: '1:641764423051:ios:336dc2cf489b8cb58feb8e',
    messagingSenderId: '641764423051',
    projectId: 'application-5c003',
    storageBucket: 'application-5c003.appspot.com',
    iosClientId: '641764423051-2f22to5ne4llgahj1ggv79lsgl6733mo.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication10',
  );
}