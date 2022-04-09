// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCwVTkU7gYnB2W99cII89qUjHkjVguPM4M',
    appId: '1:602981683316:web:93090bed5fe74d610d8121',
    messagingSenderId: '602981683316',
    projectId: 'dock-461b9',
    authDomain: 'dock-461b9.firebaseapp.com',
    storageBucket: 'dock-461b9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB0rMtucfbRCyOFjxil_u7vP6tcbAvq24',
    appId: '1:602981683316:android:6d42466830330d2c0d8121',
    messagingSenderId: '602981683316',
    projectId: 'dock-461b9',
    storageBucket: 'dock-461b9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5Aj_qfOA-ZWuuCXjPbiQ7Dwh4M2fUsYI',
    appId: '1:602981683316:ios:9365962981a37a4d0d8121',
    messagingSenderId: '602981683316',
    projectId: 'dock-461b9',
    storageBucket: 'dock-461b9.appspot.com',
    iosClientId: '602981683316-rrrqs3vibvkg3nq7m6qocs9u4pi8cirl.apps.googleusercontent.com',
    iosBundleId: 'com.GageWillette.Dock',
  );
}
