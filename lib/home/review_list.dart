import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = Column(
      children: [
        Review(
          nameProfile: "Oscar Arredondo",
          pathUrlProfile: "https://picsum.photos/id/1005/300/300", 
          details: "2 reseñas - 5 fotos",
          comments: "Un lugar muy bonito"

        ),
        Review(
          nameProfile: "Darynka Tapia",
          pathUrlProfile: "https://picsum.photos/id/1025/300/300",
          details: "2 reseñas - 5 fotos",
          comments: "Es un lugar Mágico"
        ),
        Review(
          nameProfile: "Geobana Arredondo",
          pathUrlProfile: "https://picsum.photos/id/1035/300/300",
          details: "2 reseñas - 5 fotos",
          comments: "Un lugar muy bonito"
        ),
        Review(
          nameProfile: "Leo Tapia",
          pathUrlProfile: "https://picsum.photos/id/177/300/300",
          details: "2 reseñas - 5 fotos",
          comments: "Un lugar muy bonito"
        ),
        Review(
          nameProfile: "Iris Sosa",
          pathUrlProfile: "https://picsum.photos/id/64/300/300",
          details: "2 reseñas - 5 fotos",
          comments: "Un lugar muy bonito"
        ),
      ],
    );
    return list;
  }
}