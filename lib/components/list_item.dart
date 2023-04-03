import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toku_app/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.item, required this.background})
      : super(key: key);
  final Item item;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 85,
            color: background,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.jpName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      item.enName,
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
                  onPressed: () async {
                    try {
                      AudioPlayer player = AudioPlayer();
                      await player.setSource(AssetSource(item.sound));
                      await player.resume();
                    } catch (exeption) {
                      print(exeption.toString());
                    }
                  },
                  icon: const Icon(
                    color: Colors.white,
                    Icons.play_arrow,
                    size: 48,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 85,
            color: background,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 8,
                  ),
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                    item.image!,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.jpName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      item.enName,
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
                  onPressed: () async {
                    try {
                      AudioPlayer player = AudioPlayer();
                      await player.setSource(AssetSource(item.sound));
                      await player.resume();
                    } catch (exeption) {
                      print(exeption.toString());
                    }
                  },
                  icon: const Icon(
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
