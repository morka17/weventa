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
    apiKey: 'AIzaSyB2MR01T-_q5G0_aOPNEZfxKHnuAOj4bUw',
    appId: '1:617372984287:web:d83dc226692bffb2359a6a',
    messagingSenderId: '617372984287',
    projectId: 'weventa-a0c23',
    authDomain: 'weventa-a0c23.firebaseapp.com',
    storageBucket: 'weventa-a0c23.appspot.com',
    measurementId: 'G-M4RDWRTYNH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTGAo0N495YLdBf8IDfnnNre3qNihA0CM',
    appId: '1:617372984287:android:22a3a0a1e3cb577e359a6a',
    messagingSenderId: '617372984287',
    projectId: 'weventa-a0c23',
    storageBucket: 'weventa-a0c23.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWcV-0FMRJVZwoo016tUj6AMGabTG7FBc',
    appId: '1:617372984287:ios:190e7dff9756ccbd359a6a',
    messagingSenderId: '617372984287',
    projectId: 'weventa-a0c23',
    storageBucket: 'weventa-a0c23.appspot.com',
    iosClientId: '617372984287-q4givdrb7g5k5739uo0s6bvi8ngc6cbr.apps.googleusercontent.com',
    iosBundleId: 'com.example.weventa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWcV-0FMRJVZwoo016tUj6AMGabTG7FBc',
    appId: '1:617372984287:ios:190e7dff9756ccbd359a6a',
    messagingSenderId: '617372984287',
    projectId: 'weventa-a0c23',
    storageBucket: 'weventa-a0c23.appspot.com',
    iosClientId: '617372984287-q4givdrb7g5k5739uo0s6bvi8ngc6cbr.apps.googleusercontent.com',
    iosBundleId: 'com.example.weventa',
  );
}
