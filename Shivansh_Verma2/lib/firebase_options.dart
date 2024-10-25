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
    apiKey: 'AIzaSyArEEWPkTlKc5Bc5qabL8iSSY5x24g3VqY',
    appId: '1:253242914319:web:7453079a846a670f8cd57a',
    messagingSenderId: '253242914319',
    projectId: 'todoapp-50cc0',
    authDomain: 'todoapp-50cc0.firebaseapp.com',
    storageBucket: 'todoapp-50cc0.appspot.com',
    measurementId: 'G-TYXYXR2W7T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP15NLvrF7tNsVOagx3zfMzvNhIxSjczg',
    appId: '1:253242914319:android:9b678d78af06bdb48cd57a',
    messagingSenderId: '253242914319',
    projectId: 'todoapp-50cc0',
    storageBucket: 'todoapp-50cc0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8JwzZ45kNOMX4-jWXN-FJGYaIHK8NmNA',
    appId: '1:253242914319:ios:ecd44c091719f6088cd57a',
    messagingSenderId: '253242914319',
    projectId: 'todoapp-50cc0',
    storageBucket: 'todoapp-50cc0.appspot.com',
    iosBundleId: 'com.example.shivanshVerma2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8JwzZ45kNOMX4-jWXN-FJGYaIHK8NmNA',
    appId: '1:253242914319:ios:ecd44c091719f6088cd57a',
    messagingSenderId: '253242914319',
    projectId: 'todoapp-50cc0',
    storageBucket: 'todoapp-50cc0.appspot.com',
    iosBundleId: 'com.example.shivanshVerma2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyArEEWPkTlKc5Bc5qabL8iSSY5x24g3VqY',
    appId: '1:253242914319:web:8442557860f28d028cd57a',
    messagingSenderId: '253242914319',
    projectId: 'todoapp-50cc0',
    authDomain: 'todoapp-50cc0.firebaseapp.com',
    storageBucket: 'todoapp-50cc0.appspot.com',
    measurementId: 'G-TFWEPC5FMZ',
  );
}
