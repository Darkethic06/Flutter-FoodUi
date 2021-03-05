import 'package:flutter/material.dart';
import 'package:foodui/data/data.dart';
import 'package:foodui/models/order.dart';


class RecentOrder extends StatelessWidget {

recentOrders(BuildContext context, Order order) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: 320.0,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[200],
        )),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(
            image: AssetImage(order.food.imageUrl),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                order.food.name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.0),
              Text(
                order.restaurant.name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.0),
              Text(
                order.date,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          width: 45.0,
          decoration: BoxDecoration(
              color: Colors.greenAccent[500],
              borderRadius: BorderRadius.circular(30.0)),
          child: IconButton(icon: Icon(Icons.add), onPressed: () {}),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Recent Order",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
       Container(
                height: 120.0,
                child: ListView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemCount: currentUser.orders.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    Order order = currentUser.orders[index];
                    return recentOrders(
                        context, order); // returning widget for recent orders
                  },
                ),
              ),
    ]);
  }
}


