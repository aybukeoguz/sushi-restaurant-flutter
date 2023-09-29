import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ssushi/models/shop.dart';
import 'package:ssushi/pages/cart_page.dart';
import 'pages/intro_pages.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => IntroPage(),
        '/menupage': (context) => MenuPage(),
        '/cartpage':(context) => CartPage(),
      },
    );
  }
}
