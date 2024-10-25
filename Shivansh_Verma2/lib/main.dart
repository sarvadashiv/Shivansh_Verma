import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shivansh_verma2/login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:shivansh_verma2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shivansh_verma2/signup_sceen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
      ),
      home: SignupScreen(),
    );
  }
}