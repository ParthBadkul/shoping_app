import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  String imageUrl;
  String title;
  String id;
  Products(this.imageUrl, this.id, this.title);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image(
        fit: BoxFit.fill,
        height: 60,
        image: NetworkImage(imageUrl),
      ),
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
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
    );
  }
}
