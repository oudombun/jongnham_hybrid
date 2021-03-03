import 'package:flutter/cupertino.dart';
import 'package:jongnham_hybrid/model/restuarant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Restaurants with ChangeNotifier{
  List<Restaurant> _items = [
      Restaurant(name: "Amazon",image: "assets/images/img2.jpg",latLng: LatLng(11.551637, 104.936842)),
      Restaurant(name: "Brown Cafe",image: "assets/images/img1.jpg",latLng: LatLng(11.574767, 104.916431)),
      Restaurant(name: "Library Cafe",image: "assets/images/img4.jpg",latLng: LatLng(11.566796, 104.923987)),
      Restaurant(name: "Lucky Burger",image: "assets/images/img3.jpg",latLng: LatLng(11.549444, 104.939349)),
  ];

  List<Restaurant> get items {
    return [..._items];
  }

}