import 'package:flutter/material.dart';
import 'package:foodui/Screens/recentOrder.dart';
import 'package:foodui/Screens/restaurant.dart';
import 'package:foodui/data/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: Text(
          "TakeFood",
        ),
        actions: [
          FlatButton(
            child: Text(
              "Cart(${currentUser.cart.length})",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8)),
              hintText: "Search for Food or Restraurant",
              prefixIcon: Icon(Icons.search),
            )),
          ),
          RecentOrder(),
         NearbyRestaurant()
        ],
      ),
    );
  }
}
