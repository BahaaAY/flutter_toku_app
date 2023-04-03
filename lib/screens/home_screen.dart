import 'package:flutter/material.dart';
import 'package:flutter_toku_app/screens/numbers_screen.dart';

import '../components/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          Category(const Color(0xffef9235), 'Numbers', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumbersScreen();
            }));
          }),
          Category(const Color(0xff699548), 'Family Members', () {
            print('Numbers');
          }),
          Category(const Color(0xff9157B6), 'Colors', () {
            print('Numbers');
          }),
          Category(const Color(0xff5DB8DC), 'Phrases', () {
            print('Numbers');
          }),
        ],
      ),
    );
  }
}
