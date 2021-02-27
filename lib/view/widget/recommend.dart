import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/3,
            child: Stack(
              children: <Widget>[
                // Max Size
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(children: [
                      Image.asset(
                        'assets/images/img1.jpg',
                        fit: BoxFit.cover,
                        height: 170,
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        color: Colors.black38,
                      ),
                    ],),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 40.0,
                      child: Image.asset(
                        'assets/images/voucher.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Coupon",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/3,
            child: Stack(
              children: <Widget>[
                // Max Size
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(children: [
                      Image.asset(
                        'assets/images/img2.jpg',
                        fit: BoxFit.cover,
                        height: 170,
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        color: Colors.black38,
                      ),
                    ],),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 40.0,
                      child: Icon(Icons.stars,size: 35,color: Colors.white,),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Most View ",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/3,
            child: Stack(
              children: <Widget>[
                // Max Size
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(children: [
                      Image.asset(
                        'assets/images/img1.jpg',
                        fit: BoxFit.cover,
                        height: 170,
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        color: Colors.black38,
                      ),
                    ],),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 40.0,
                      child: Icon(Icons.comment_outlined,size: 35,color: Colors.white,),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Review",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
