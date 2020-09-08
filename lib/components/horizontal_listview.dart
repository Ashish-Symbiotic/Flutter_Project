import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/icons/shirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/icons/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/icons/gym-shoes.png',
            image_caption: 'Gym-Shoes',
          ),
          Category(
            image_location: 'images/icons/trousers.png',
            image_caption: 'Trousers',
          ),
          Category(
            image_location: 'images/icons/shoes.png',
            image_caption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 100.0,
            height: 80.0,
            child: ListTile(
              title: new Image(image: AssetImage(image_location)),
              subtitle: Container(
                margin: const EdgeInsets.all(0),
                alignment: Alignment.topCenter,
                child:
                    Text(image_caption, style: new TextStyle(fontSize: 12.0)),
              ),
            )),
      ),
    );
  }
}
