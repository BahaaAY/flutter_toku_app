import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toku_app/models/number.dart';

class itemWidget extends StatelessWidget {
  const itemWidget({Key? key, required this.number}) : super(key: key);
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: const Color(0xffFB9F37),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 8,
            ),
            color: const Color(0xffFFF6DC),
            child: Image.asset(
              number.image,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(
                number.jpName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                number.enName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 32),
            onPressed: (){
              AudioPlayer player = AudioPlayer();
              player.setSource(AssetSource('sounds/numbers/number_one_sound.mp3'));
              player.resume();
              print('play');
            },
            icon:
            const Icon(
            color: Colors.white,
            Icons.play_arrow,
            size: 48,
            ),
          )
        ],
      ),
    );
  }
}
