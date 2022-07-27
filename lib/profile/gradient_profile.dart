import 'package:flutter/material.dart';

class GradientProfile extends StatelessWidget {
  const GradientProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 500.0,
      color: const Color(0xFF584CD1),
      alignment: const Alignment(-0.9, -0.7),

      child: const Text(
        "Perfil", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),

    );
  }
}