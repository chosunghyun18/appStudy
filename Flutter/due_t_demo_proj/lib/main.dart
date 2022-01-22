import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';


void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen(),
      title: 'DemoApp',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: MyHomePage(title: ''),
    );
  }
}
