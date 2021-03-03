import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/model/restuarant.dart';
import 'package:jongnham_hybrid/providers/restaurants.dart';
import 'package:jongnham_hybrid/view/widget/restaurant_item.dart';
import 'package:provider/provider.dart';

class RestaurantList extends StatelessWidget {
  List<Restaurant> list;
  @override
  Widget build(BuildContext context) {
    list = Provider.of<Restaurants>(context).items;
    return Column(
      children: [
        Container(
          color: Colors.black87,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff4C4C4C),
                    ),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    child: Center(
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 4, left: 10),
                                child: Icon(
                                  Icons.filter_list,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              ),
                              Text(
                                "Filter",
                                style: TextStyle(fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  )),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff4C4C4C),
                    ),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    child: Center(
                      child: Text(
                        "Ranking",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff4C4C4C),
                    ),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    child: Center(
                      child: Text(
                        "View",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff4C4C4C),
                    ),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    child: Center(
                      child: Text(
                        "Price",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return RestaurantItem(image: list[index].image,);
                  },
                )),
          ),
        )
      ],
    );
  }
}
