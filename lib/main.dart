import 'package:flutter/material.dart';
import 'package:quotesapp/screens/EditingPage.dart';
import 'package:quotesapp/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> const HomePage(),
        '/editingpage':(context)=> const EditingPage(),
      },
    );
    }
}