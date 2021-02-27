import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1, // 20%
        child:   Container(
          child: Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Column(children: [
              Icon(Icons.my_location_outlined,color: Color(0xffA30E1A),),
              Text("Near Me")
            ],),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              )
          ),
        ),
      ),
      Expanded(
        flex: 1, // 20%
        child:   Container(
          child: Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Column(children: [
              Icon(Icons.restaurant,color: Color(0xffA30E1A),),
              Text("Type of food")
            ],),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              )
          ),
        ),
      ),
      Expanded(
        flex: 1, // 20%
        child:   Container(
          child: Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Column(children: [
              Icon(Icons.location_on_sharp,color: Color(0xffA30E1A),),
              Text("Location")
            ],),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              )
          ),
        ),
      ),
    ]);
  }
}
