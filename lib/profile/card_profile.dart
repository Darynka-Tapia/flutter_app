import 'package:flutter/material.dart';
import '../components/floating_action_button_green.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 250.0,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10.0, 
        left: 20.0,
        right: 20.0
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://picsum.photos/id/1015/350/250"),
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)), 
        shape: BoxShape.rectangle, 
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0, 
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        const FloatingActionButtonGreen()
      ],
    );
  }
}