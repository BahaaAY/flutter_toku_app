import 'package:flutter/material.dart';
import 'package:flutter_toku_app/components/item.dart';
import 'package:flutter_toku_app/models/number.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
      image: "assets/images/numbers/number_one.png",
      jpName: 'one',
      enName: 'ichi',
    ),
    Number(
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    Number(
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    Number(
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    Number(
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    Number(
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    Number(
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    Number(
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    Number(
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    Number(
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index){
          return itemWidget(number: numbers[index]);
        },
      ),
    );
  }
}
