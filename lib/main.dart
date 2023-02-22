import 'package:app4/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:app4/screens/product_description.dart';
import 'package:app4/screens/products.dart';
import 'package:app4/models/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme: ColorScheme.highContrastDark(background: Colors.black12),
        fontFamily: 'Lato',
      ),
      home: Hey(),
      routes: {
        '/product_detail': (context) => Product_detail(),
      },
    );
  }
}
