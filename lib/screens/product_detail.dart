import 'package:flutter/material.dart';
import 'package:app4/models/product.dart';

import 'package:flutter/material.dart';

class Product_detail extends StatelessWidget {
  const Product_detail({super.key});

  // String id;
  // Product_detail(this.id);

  // static const routeName = '/productDetail';

  @override
  Widget build(BuildContext context) {
    String ideal = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(title: Text("$ideal")),
    );
  }
}
