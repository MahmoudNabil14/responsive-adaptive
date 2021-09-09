import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/Desktop%20Screen.dart';
import 'package:responsive_and_adaptive/Mobile%20Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive & adaptive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) {
          MediaQuery.of(context).size.width;
          if(MediaQuery.of(context).size.width.toInt() <= 560){
            return MediaQuery(data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.73,
            ),
            child: MobileScreen());
          }
          return DesktopScreen();
        },
      )
    );
  }
}
