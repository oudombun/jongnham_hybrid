import 'dart:async';
import 'dart:math';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/model/restuarant.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class CustomGoogleMap extends StatefulWidget {
  final List<LatLng> pinPosition;
  CustomGoogleMap(
      {this.pinPosition});
  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  BitmapDescriptor pinLocationIcon;
  Map<String, BitmapDescriptor> pinLocationIconMap;

  Set<Marker> _markers = {};

  Completer<GoogleMapController> _googleMapController = Completer();

  Location location = Location();

  bool _serviceEnabled;

  PermissionStatus _permissionGranted;
  LocationData _locationData;



  int current = 0;
  bool isOnPageTurning = false;
  PageController _controller;
  @override
  Widget build(BuildContext context) {
    CameraPosition initialLocation = CameraPosition(
      zoom: 14,
      bearing: 20,
      target: LatLng(11.551637, 104.936842),
    );
    _setMarker();
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: GoogleMap(
            myLocationEnabled: true,
            initialCameraPosition: initialLocation,
            onMapCreated: _onMapCreated,
            markers: _markers,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              child: PageView(
                controller: _controller,
                children: [
                  Container(width: double.infinity,height: 100,color: Colors.white,
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
                                'assets/images/img3.jpg',
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
                  ),
                  Container(width: double.infinity,height: 100,color: Colors.white,
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
                                'assets/images/img2.jpg',
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
                  ),
                  Container(width: double.infinity,height: 100,color: Colors.white,
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
                                'assets/images/img1.jpg',
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
                  ),
                  Container(width: double.infinity,height: 100,color: Colors.white,
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
                                'assets/images/img3.jpg',
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
                  )
                ],
              ),
            )
        )
      ],
    );
  }



  _setMarker() {
    setState(() {
      _markers.clear();
      if (widget.pinPosition != null){
        this._markers = widget.pinPosition.map((e) => Marker(
            markerId: MarkerId("id"+e.latitude.toString()),
            position: LatLng(e.latitude, e.longitude),
            onTap: () {},
          ),
        ).toSet();
      }
    });
  }

  _onMapCreated(GoogleMapController controller) {
    setState(() {
      _googleMapController.complete(controller);
    });
  }

  Widget LoadingComponent(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 8),
              SpinKitRing(
                color: Colors.red,
              ),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
    _setCustomMapPin();

    _controller = PageController(
      initialPage: 0,
    );
    _controller.addListener(scrollListener);



  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  // Initialize Pin Marker Icon
  void _setCustomMapPin() async {
    this.pinLocationIconMap = Map();
  }

  void _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    print('_serviceEnabled : $_serviceEnabled');
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    print('_permissionGranted : $_permissionGranted');
    // SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) {
        return;
      }
    }

    _locationData = await location.getLocation();

    setState(() {});
  }

  void scrollListener() {


    if (isOnPageTurning &&
        _controller.page == _controller.page.roundToDouble()) {
      setState(() {
        current = _controller.page.toInt();
        isOnPageTurning = false;

      });
    } else if (!isOnPageTurning && current.toDouble() != _controller.page) {
      if ((current.toDouble() - _controller.page).abs() > 0.1) {
        setState(() {
          isOnPageTurning = true;

        });
      }
    }
  }


}
