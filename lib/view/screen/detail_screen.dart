import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jongnham_hybrid/view/widget/RestaurantList.dart';
import 'package:jongnham_hybrid/view/widget/custom_google_map.dart';
class DetailScreen extends StatefulWidget {
  static String identity = 'detail';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  bool isMap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          hintText: 'Search',
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(6)),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        onChanged: (val) {},
                      ),
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: isMap==false ? InkWell(
                  onTap: () {
                    setState(() {
                      isMap=!isMap;
                    });
                  },
                  child: Icon(
                    Icons.public,
                    size: 26,
                  ),
                ):InkWell(
                  onTap: () {
                    setState(() {
                      isMap=!isMap;
                    });
                  },
                  child: Icon(
                    Icons.list,
                    size: 26,
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [],
      ),
      body: isMap !=false ? CustomGoogleMap() : RestaurantList(),
    );
  }


}
