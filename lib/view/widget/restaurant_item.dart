import 'package:flutter/material.dart';

class RestaurantItem extends StatelessWidget {
  String image;
  RestaurantItem({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset(
                '$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: EdgeInsets.all(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Happy Herb's Pizza"),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[400])
                          ),
                          child: Center(child: Text("2.7 km",style: TextStyle(color: Colors.grey),),),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(children: [
                      Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                      Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                      Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                      Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                      Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                      Container(
                        child: Text(
                          "5 Ratings | 23 Reviews",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.grey,
                          size: 16,
                        ),
                        Text(" BBQ"),
                        Text(
                          " | ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.place,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(" Phnom penh"),
                        Spacer(),
                        Text("Open now",style: TextStyle(color: Colors.greenAccent,fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
