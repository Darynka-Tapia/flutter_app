import 'package:flutter/material.dart';

import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';


class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace(
              namePlace: "Los Cabos", 
              stars:3, 
              descriptionPlace: "Lorem ipsum dolor sit amet consectetur adipiscing elit aliquet sociis risus vestibulum, tincidunt nostra quisque dis auctor dictum metus gravida erat mattis, vulputate ridiculus himenaeos porta porttitor senectus leo venenatis placerat viverra. "
            ),
            const ReviewList()
          ],
        ),
        const HederAppBar()
      ],
    );
  }
}