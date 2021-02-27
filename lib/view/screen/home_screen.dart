import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/view/widget/header.dart';
import 'package:jongnham_hybrid/view/widget/recommend.dart';
import 'package:jongnham_hybrid/view/widget/subheader.dart';
class HomeScreen extends StatefulWidget {
  static String identity = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Coupon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Me',
          )
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Header(),
          SubHeader(),
          Padding(child: Text("Recommended"),padding: EdgeInsets.only(top: 10,left: 10),),
          Recommend(),
          Padding(child: Text("Coupon"),padding: EdgeInsets.only(top: 10,left: 10),),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 150,
            child: PageView(
                controller: _controller,
                children: [
                  ClipRRect(
                      child: Container(color: Colors.blue,width: 100,height: 200,
                      child: Image.asset('assets/images/main_img.jpg',fit: BoxFit.cover,),),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  ClipRRect(
                    child: Container(color: Colors.blue,width: 100,height: 200,
                      child: Image.asset('assets/images/img4.jpg',fit: BoxFit.cover,),),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ]
            ),
          )
        ],crossAxisAlignment: CrossAxisAlignment.start,),
      ),
    );
  }
}
