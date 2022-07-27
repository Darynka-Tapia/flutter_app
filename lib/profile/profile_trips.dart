import 'package:flutter/material.dart';
import 'header_profile.dart';
import 'detail_profile.dart';
import 'menu_profile.dart';
import 'list_cards_profile.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HeaderProfile(),
        ListView(
          children: const [
            ListCardsProfile()
          ],
        ),
        const DetailProfile(),
        const MenuProfile(), 
        
      ],
    );
  }
}