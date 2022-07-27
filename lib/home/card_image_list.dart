import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(path: "https://picsum.photos/id/1015/350/250"),
          CardImage(path: "https://picsum.photos/id/1023/350/250"),
          CardImage(path: "https://picsum.photos/id/1020/350/250"),
          CardImage(path: "https://picsum.photos/id/1036/350/250"),
          CardImage(path: "https://picsum.photos/id/1044/350/250")
        ],
      ),
    );
  }
}