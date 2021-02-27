import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/view/screen/detail_screen.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 240,
        child: Stack(children: [
          Image.asset(
            'assets/images/main_img.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            height: 240,
            width: double.infinity,
            color: Colors.black38,
          ),
        ],)
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          height: 240.0,
          width: 140.0,
          child: Image.asset(
            'assets/images/logos.png',
            fit: BoxFit.contain,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
      ),
      Container(
        height: 220,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(DetailScreen.identity);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 340,
                height: 40,
                color: Colors.white,
                child: Row(children: [
                  Padding(child: Icon(Icons.search),padding: EdgeInsets.only(left: 10),),
                  Text("Search",style: TextStyle(color: Colors.grey),)
                ],mainAxisAlignment: MainAxisAlignment.start),
              ),
            ),
          ),
        ),
      )
    ],);
  }
}
