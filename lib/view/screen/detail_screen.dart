import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jongnham_hybrid/view/widget/custom_google_map.dart';
class DetailScreen extends StatefulWidget {
  static String identity = 'detail';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<LatLng> pinPosition = [
    LatLng(11.551637, 104.936842),
    LatLng(11.574767, 104.916431),
    LatLng(11.566796, 104.923987),
    LatLng(11.549444, 104.939349),
  ];
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
      body: isMap !=false ?CustomGoogleMap(pinPosition: pinPosition) : _content(),
    );
  }


  Widget _content() {
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
            // child: Column(
            //   children: [
            //     Flexible(
            //       child: Container(
            //         margin: EdgeInsets.only(bottom: 10),
            //         width: double.infinity,
            //         child: Text("245 restaurants found"),
            //       ),
            //     ),

            //   ],
            // ),
            child: Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return item();
                  },
                )),
          ),
        )
      ],
    );
  }

  Widget item() {
    var image = "https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/9d/84/ae/baitong-hotel-resort.jpg";
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
              child: Image.network(
                image,
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
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       RatingBarIndicator(
                  //         rating: 4.75,
                  //         itemBuilder: (context, index) => Icon(
                  //           Icons.star,
                  //           color: Colors.amber,
                  //         ),
                  //         itemCount: 5,
                  //         itemSize: 16.0,
                  //         direction: Axis.horizontal,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(left: 6),
                  //         child: Text("5"),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(left: 10),
                  //         child: Text(
                  //           "|",
                  //           style: TextStyle(color: Colors.grey),
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(left: 10),
                  //         child: Icon(
                  //           Icons.remove_red_eye,
                  //           color: Colors.grey,
                  //           size: 16,
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(left: 10),
                  //         child: Text(
                  //           "245 Views",
                  //           style: TextStyle(color: Colors.black87),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
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
