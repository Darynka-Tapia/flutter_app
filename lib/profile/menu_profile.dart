import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      margin: const EdgeInsets.only(
        top: 240.0,
        left: 10.0,
        right: 10.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.turned_in_not,
              color: Color(0xFF584CD1)
            ),
          ),
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.surfing,
              color: Color(0xFF584CD1)
            ),
          ),
          Container(
            width: 70.0,
            height: 70.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xFF584CD1),
              size: 50.0,
            ),
          ),
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.message_outlined,
              color: Color(0xFF584CD1)
            ),
          ),
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.emoji_people,
              color: Color(0xFF584CD1),
            ),
          ),
        ],
      ),
    );
  }
}