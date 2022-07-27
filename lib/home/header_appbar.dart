import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';

class HederAppBar extends StatelessWidget {
  const HederAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(),
        CardImageList()
      ],
    );
  }
}