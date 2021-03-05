
import 'package:flutter/material.dart';
import 'package:foodui/Screens/restaurantDetails.dart';
import 'package:foodui/data/data.dart';
import 'package:foodui/models/restaurant.dart';

class NearbyRestaurant extends StatelessWidget {

  nearByRestaurant(BuildContext context) {
    List reastaurantList = [

    ];
    restaurants.forEach(
      (Restaurant restaurant) {
      reastaurantList.add(GestureDetector(
        onTap: (){
         Navigator.push( context, MaterialPageRoute(builder: (_) => RestaurantDetails(restaurant: restaurant,)));
        },
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              )),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(tag: restaurant.imageUrl,
                  child: Image(
                    height: 150.0,
                    width: 150.0,
                    image: AssetImage(restaurant.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(restaurant.name),
                    Text(restaurant.address),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    });
    return Column( children: reastaurantList);
}
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Nearby Restaurants",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
              ),
              nearByRestaurant(context),

            ],
          );
  }
}
 


