import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonGreen> createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  bool pressed = false;
  void onPressedFav(){
    setState(() {
      pressed = !pressed;
    });
    final action = pressed ? "agregado la foto a " : "removido la foto de ";
    
    // pressed = !pressed;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Has $action favoritos"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11D453),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}