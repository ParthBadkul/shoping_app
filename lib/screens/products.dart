import 'package:flutter/material.dart';
import 'package:app4/screens/product_detail.dart';
import 'package:app4/main.dart';

class Products extends StatelessWidget {
  String imageUrl;
  String title;
  String id;
  Products(this.imageUrl, this.id, this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/product_detail', arguments: id);
        },
        child: GridTile(
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: []),
            child: Image(
              fit: BoxFit.fill,
              height: 60,
              image: NetworkImage(imageUrl),
            ),
          ),
          footer: GridTileBar(
            leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Theme.of(context).colorScheme.background,
            ),
            backgroundColor: Colors.black54,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
