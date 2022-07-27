import 'package:flutter/material.dart';
import 'card_profile.dart';
class ListCardsProfile extends StatelessWidget {
  const ListCardsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(
        top: 300.0
      ),
      child: Column(
        children: const [
          CardProfile(),
        ],
      )
      
    );
  }
}