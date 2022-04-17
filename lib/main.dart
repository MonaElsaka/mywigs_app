import 'package:flutter/material.dart';

import 'package:wigzawy/screens/login.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>  _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: logIn(),


    );

    //  return  SplashScreen(
    //   seconds: 7,
    //   backgroundColor: Colors.white,
    //   image: Image.network(
    //     "https://img.icons8.com/office/2x/safety-collection-place.png",
    //   ),
    //   photoSize: 50.0,
    //   loadingText: Text(
    //     "By Mona",
    //     style: TextStyle(
    //       fontSize: 15,
    //     ),
    //   ),
    //   navigateAfterSeconds:layout(),
    // );

    //
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: layout(),


    // );
  }
}

// DropdownButton<String>(items: length_variation.map(buildmenuitems).toList(),value: value,
// onChanged: (value) {
//   setState(() =>this.value=value);
// },

// ),
