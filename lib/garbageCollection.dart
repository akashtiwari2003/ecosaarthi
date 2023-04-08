import 'reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class GarbageCollection extends StatefulWidget {
  const GarbageCollection({Key? key}) : super(key: key);

  @override
  State<GarbageCollection> createState() => _GarbageCollectionState();
}

class _GarbageCollectionState extends State<GarbageCollection> {
  String location = 'Null, Press Button';
  CollectionReference loc = FirebaseFirestore.instance.collection('location');
  String Address = 'search';
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> GetAddressFromLatLong(Position p) async{
    List<Placemark> placemark= await placemarkFromCoordinates(p.latitude, p.longitude);
    print(placemark);
    Placemark place = placemark[0];
    Address = '${place.street}, ${place.locality},${place.postalCode}${place.country}, ';
    await loc.add({'lat': '${p.latitude}', 'lon' : '${p.longitude}', 'country' : '${place.country}', 'locality' : '${place.locality}', 'street' : '${place.street}',});
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      title: 'Location Updated',
      text: '${place.postalCode}, ${place.country}',
      confirmBtnText: 'Ok',
      onConfirmBtnTap: ()=>{
        Navigator.of(context).pop(),
      },
      confirmBtnColor: Colors.green,
    );
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBarr(),
          body: Stack(
            children: [
              Image.asset('assets/images/map.png',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity
              ),

              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 200,width: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {

                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          Image.asset(
                            'assets/images/truck.png',
                            height: 100,
                            width: 100,
                          ),
                          Container(
                            child: const Text(
                              'Waste Disposal',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    ElevatedButton(
                      style: TextButton.styleFrom(
                        minimumSize: const Size(150, 40),
                      ),
                      //   const ButtonStyle(
                      //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                      //   backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                      // ),
                      onPressed: () async{
                        Position position = await _determinePosition();
                        print(position.latitude);
                        print(position.longitude);
                        location = 'Lat ${position.latitude}, Long: ${position.longitude}';
                        GetAddressFromLatLong(position);
                        // showDialog(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return AlertDialog(
                        //       title: Text('Message'),
                        //       content: Text('Hello, World!'),
                        //       actions: [
                        //         TextButton(
                        //           child: Text('Close'),
                        //           onPressed: () {
                        //             Navigator.of(context).pop();
                        //           },
                        //         ),
                        //       ],
                        //     );
                        //   },
                        // );
                        setState(() {

                        });

                      },
                      child: const Text("Update Location"),
                    )

                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
