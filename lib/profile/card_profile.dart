import 'package:flutter/material.dart';
import '../components/floating_action_button_green.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 250.0,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10.0, 
        left: 20.0,
        right: 20.0
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://picsum.photos/id/1015/350/250"),
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)), 
        shape: BoxShape.rectangle, 
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0, 
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );
    final detailsSteps = Container(
      width: double.infinity,
      height: 140.0,
      margin: const EdgeInsets.only(
        top: 180.0, 
        left: 60.0,
        right: 60.0,
        bottom: 50.0
      ),
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)), 
        shape: BoxShape.rectangle, 
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0, 
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: const Text(
              "Knucles Mountains Range",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: const Text(
              "Hiking Waterfall hunting, Natural bath, Sconery & Photography",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w200
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 0.0),
            child: const Text(
              "Steps    123,123,123",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.orange
              ),
            ),
          ),
        ],
      ),
    );

    final detailsStepsWithLike = Stack(
      alignment: const Alignment(0.60, 0.8),
      children: [
        detailsSteps,
        const FloatingActionButtonGreen()
      ],
    );
    return Stack(
      // alignment: Alignment(0.0, 2.0),
      children: [
        card,
        detailsStepsWithLike,
        // const FloatingActionButtonGreen()
      ],
    );
  }
}