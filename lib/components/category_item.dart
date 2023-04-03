
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Color color;
  String text;
  Function() onTap;
  Category(this.color, this.text, this.onTap) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child:Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

