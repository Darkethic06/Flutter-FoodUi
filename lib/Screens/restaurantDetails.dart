import 'package:flutter/material.dart';
import 'package:foodui/data/data.dart';
import 'package:foodui/models/restaurant.dart';

class RestaurantDetails extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantDetails({this.restaurant});
  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(tag: widget.restaurant.imageUrl, 
                child: Image(
                  image: AssetImage(widget.restaurant.imageUrl),
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
