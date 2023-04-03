import 'package:flutter/material.dart';
import 'package:flutter_toku_app/screens/home_screen.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: const MaterialColor(0xff46322B, <int, Color>{
        50: Color(0xff46322B),
        100: Color(0xff46322B),
        200: Color(0xff46322B),
        300: Color(0xff46322B),
        400: Color(0xff46322B),
        500: Color(0xff46322B),
        600: Color(0xff46322B),
        700: Color(0xff46322B),
        800: Color(0xff46322B),
        900: Color(0xff46322B),
        },
      ),
      ),
      home: const HomeScreen(),
    );
  }
}
