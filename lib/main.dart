import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Stack(
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
          )

      )  /*const MyHomePage(title: 'Flutter Demo Home Page'),*/
    );
  }
}
