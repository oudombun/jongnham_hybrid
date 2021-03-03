import 'package:flutter/material.dart';

class Pager extends StatelessWidget {
  String title;
  String image;

  Pager({this.title,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: 100,color: Colors.white,
        padding: EdgeInsets.all(10),
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
                          child: Text("$title"),
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
                        Container(
                          child: Text(
                            "Cambodia",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("Open now",style: TextStyle(color: Colors.greenAccent,fontSize: 15,fontWeight: FontWeight.bold),),
                          Spacer(),
                          Icon(
                            Icons.assistant_direction,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
