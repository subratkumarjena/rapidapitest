
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
        return windows;
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
    apiKey: 'AIzaSyBQWIxBjRw5jtTmssorI1l-aZnrVht7sTk',
    appId: '1:525766642480:web:da7c0f8873f54ca08d96f5',
    messagingSenderId: '525766642480',
    projectId: 'todoapp-6cee2',
    authDomain: 'todoapp-6cee2.firebaseapp.com',
    storageBucket: 'todoapp-6cee2.appspot.com',
    measurementId: 'G-CLPYQX9Y3W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9Tc9nyf3Vk6Z41l77ZVqiwEvAqsVLuMA',
    appId: '1:525766642480:android:a4f1e0616d48e0338d96f5',
    messagingSenderId: '525766642480',
    projectId: 'todoapp-6cee2',
    storageBucket: 'todoapp-6cee2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCE0xz8CykPjW66_uWPoZ3H1z62n8kdwsI',
    appId: '1:525766642480:ios:126d6afb79b13e808d96f5',
    messagingSenderId: '525766642480',
    projectId: 'todoapp-6cee2',
    storageBucket: 'todoapp-6cee2.appspot.com',
    iosBundleId: 'com.example.todoappfire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCE0xz8CykPjW66_uWPoZ3H1z62n8kdwsI',
    appId: '1:525766642480:ios:126d6afb79b13e808d96f5',
    messagingSenderId: '525766642480',
    projectId: 'todoapp-6cee2',
    storageBucket: 'todoapp-6cee2.appspot.com',
    iosBundleId: 'com.example.todoappfire',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBQWIxBjRw5jtTmssorI1l-aZnrVht7sTk',
    appId: '1:525766642480:web:e4c494f5b782c7ff8d96f5',
    messagingSenderId: '525766642480',
    projectId: 'todoapp-6cee2',
    authDomain: 'todoapp-6cee2.firebaseapp.com',
    storageBucket: 'todoapp-6cee2.appspot.com',
    measurementId: 'G-RY5Y13BH2X',
  );
}
