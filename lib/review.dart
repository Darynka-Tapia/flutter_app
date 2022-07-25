import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String nameProfile;
  String pathUrlProfile;
  String details;
  String comments;

  Review({
    Key? key,
    required this.nameProfile,
    required this.pathUrlProfile, 
    required this.details, 
    required this.comments
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        nameProfile, 
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato", 
          fontSize: 17.0
        ),
      ),
    );
    
    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details, 
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato", 
          fontSize: 13.0, 
          color: Color(0xFFa3a5a7)
        ),
      ),
    );
    final userComments = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comments, 
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato", 
          fontSize: 13.0, 
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo, 
        userComments
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        bottom: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathUrlProfile),
        ),
      ),
    );
  
    return Row(
      children: [
        photo,
        userDetails
      ],
    );
    
  }
}