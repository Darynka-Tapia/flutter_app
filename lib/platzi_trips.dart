import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/profile/profile_trips.dart';
import '/home/home_trip.dart';
import '/profile/profile_trips.dart';
import 'search.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildent = const [
    ProfileTrips(),
    HomeTrips(),
    Search(),
  ];
  
  void _onItemTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildent[indexTap],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexTap,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF584CD1),
          unselectedItemColor: const Color(0xFF4268D3).withOpacity(0.8),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Perfil'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          ],
        ),
      );
  }
}