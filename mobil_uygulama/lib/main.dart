import 'package:akilliulasim_proje/pages/deneme.dart';
import 'package:akilliulasim_proje/pages/temprory.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akıllı Ulaşım',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TemproryPage(),
    );
  }
}


