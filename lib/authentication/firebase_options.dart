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
        return macos;
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
    apiKey: 'AIzaSyA1ilasPgjAmIpSr1j6_q9HaGGjDev9N-0',
    appId: '1:87996510133:web:ff60e932b38d9961d373fc',
    messagingSenderId: '87996510133',
    projectId: 'my-uganda-online-stable',
    authDomain: 'my-uganda-online-stable.firebaseapp.com',
    storageBucket: 'my-uganda-online-stable.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB253kbx727xsnmJMuy6AP6B51_mMspA1w',
    appId: '1:87996510133:android:85134951fca89b02d373fc',
    messagingSenderId: '87996510133',
    projectId: 'my-uganda-online-stable',
    storageBucket: 'my-uganda-online-stable.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVn5VOT3YUAXvp7Epu5Qi22fZ48nd0IXo',
    appId: '1:87996510133:ios:988b5d607d59045dd373fc',
    messagingSenderId: '87996510133',
    projectId: 'my-uganda-online-stable',
    storageBucket: 'my-uganda-online-stable.appspot.com',
    iosClientId: '87996510133-ufa0a5bokia379lt3qjo49ip47t6s5t4.apps.googleusercontent.com',
    iosBundleId: 'com.example.myUgandaOnline',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVn5VOT3YUAXvp7Epu5Qi22fZ48nd0IXo',
    appId: '1:87996510133:ios:988b5d607d59045dd373fc',
    messagingSenderId: '87996510133',
    projectId: 'my-uganda-online-stable',
    storageBucket: 'my-uganda-online-stable.appspot.com',
    iosClientId: '87996510133-ufa0a5bokia379lt3qjo49ip47t6s5t4.apps.googleusercontent.com',
    iosBundleId: 'com.example.myUgandaOnline',
  );
}
