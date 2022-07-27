import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0, 
        right: 20.0
      ),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://picsum.photos/id/1025/300/300"),
        ),
        border: Border.all(
          width: 2,
          color: Colors.white
        ),
      ),
    );
    final profile_data = Container(
      height: 60.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Darynka Tapia",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500
            ),
          ),
          Text(
            "email_fake01@gmail.com",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 16.0,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 120.0,
        left: 20.0
      ),
      child: Row(
        children:  [
          photo,
          profile_data
        ],
      ),
    );
  }
}