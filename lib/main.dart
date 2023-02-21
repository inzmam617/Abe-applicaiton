import 'package:abe_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: const MyApp(),debugShowCheckedModeBanner: false,theme: ThemeData(fontFamily: 'Gilroy'),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const splash();
  }
}

