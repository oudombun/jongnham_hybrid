import 'dart:async';
import 'dart:math';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/model/restuarant.dart';
import 'package:jongnham_hybrid/providers/restaurants.dart';
import 'package:jongnham_hybrid/view/widget/pager.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class CustomGoogleMap extends StatefulWidget {
  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  BitmapDescriptor pinLocationIcon;
  Map<String, BitmapDescriptor> pinLocationIconMap;

  Set<Marker> _markers = {};

  GoogleMapController _mapController;

  Location location = Location();

  bool _serviceEnabled;

  PermissionStatus _permissionGranted;
  LocationData _locationData;

  List<LatLng> pinPosition;

  int current = 0;
  bool isOnPageTurning = false;
  PageController _controller;
  List<Restaurant> list;

  @override
  Widget build(BuildContext context) {

    list = Provider.of<Restaurants>(context).items;

    CameraPosition initialLocation = CameraPosition(
      zoom: 14,
      bearing: 20,
      target: LatLng(11.551637, 104.936842),
    );

    _setMarker(list);
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
                children: list.map((e) {
                  return Pager(title: e.name,image: e.image);
                }).toList(),
              ),
            )
        )
      ],
    );
  }



  _setMarker(List<Restaurant> list) {
    setState(() {
      _markers.clear();
      if (list != null){
        this._markers = list.map((e) => Marker(
            markerId: MarkerId("id"+e.latLng.latitude.toString()),
            position: LatLng(e.latLng.latitude, e.latLng.longitude),
            onTap: () {},
          ),
        ).toSet();
      }
    });
  }

  _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
    });
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
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
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

        _mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: list[current].latLng,
              zoom: 15,
            ),
          ),
        );
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
