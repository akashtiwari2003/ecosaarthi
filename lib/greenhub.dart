import 'package:flutter/material.dart';

class GreenCommunity extends StatelessWidget {
  const GreenCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              //
              Image.asset("assets/images/map.png",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35.0, vertical: 35.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          Image.asset(
                            'assets/images/Group.png',
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
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 252, 252, 252),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          Image.asset(
                            'assets/images/green1.png',
                            height: 80,
                            width: 700,
                          ),
                          Text(
                            '“Wash laundry in cold water - it saves energy and preserves colors."',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          Image.asset(
                            'assets/images/green2.png',
                            height: 80,
                            width: 700,
                          ),
                          Container(
                            child: const Text(
                              'Tree Plantation Campaigns',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          Image.asset(
                            'assets/images/green3.png',
                            height: 80,
                            width: 700,
                          ),
                          Container(
                            child: const Text(
                              'Green Groups',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(150, 40),
                    //   ),
                    //   //   const ButtonStyle(
                    //   //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                    //   //   backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                    //   // ),
                    //   onPressed: () async{
                    //     Position position = await _determinePosition();
                    //     print(position.latitude);
                    //     print(position.longitude);
                    //     location = 'Lat ${position.latitude}, Long: ${position.longitude}';
                    //     GetAddressFromLatLong(position);
                    //     // showDialog(
                    //     //   context: context,
                    //     //   builder: (BuildContext context) {
                    //     //     return AlertDialog(
                    //     //       title: Text('Message'),
                    //     //       content: Text('Hello, World!'),
                    //     //       actions: [
                    //     //         TextButton(
                    //     //           child: Text('Close'),
                    //     //           onPressed: () {
                    //     //             Navigator.of(context).pop();
                    //     //           },
                    //     //         ),
                    //     //       ],
                    //     //     );
                    //     //   },
                    //     // );
                    //     setState(() {

                    //     });

                    //   },
                    //   child: const Text("Update Location"),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

// class MyListTile extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final IconData icon;

//   MyListTile({
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(
//         title,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       subtitle: Text(subtitle),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // do something when the tile is tapped
//       },
//     );
//   }
// }