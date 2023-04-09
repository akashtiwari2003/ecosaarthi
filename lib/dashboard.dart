import 'package:finlogin/ecovichaar.dart';
import 'package:finlogin/garbageCollection.dart';
import 'package:finlogin/greenhub.dart';
import 'package:finlogin/locationChoose.dart';
import 'package:flutter/material.dart';
const _backCardColor = Color(0xFFFFECC6);

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_rounded))
              ],
              backgroundColor: const Color(0xFF7AC533),
              title: const Text('Dashboard'),
              centerTitle: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
              ),
            ),
            drawer: Drawer(
              child: Text('Hello'),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        child: Text(
                          'Prakriti Mitra',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          'See All',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                //

                // SizedBox(
                //   height: 200.0,
                //   width: double.infinity,
                //   child: Carousel(
                //     dotSize: 6.0,
                //     dotSpacing: 15.0,
                //     dotPosition: DotPosition.bottomCenter,
                //     images: [
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //       Image.asset(
                //           'assets/images/event.png', fit: BoxFit.cover),
                //     ],
                //   ),
                // ),

                const SizedBox(
                  height: 10,
                ),
                //First Row of dashboard tile
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _backCardColor,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>const GarbageCollection())
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.asset('assets/images/truck.png'),
                                    Text(
                                      'Svachh Seva',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Waste Disposal',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _backCardColor,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>const GreenCommunity())
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.asset('assets/images/tree.png'),
                                    Text(
                                      'Haryaali Hub',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Green Community',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ]),
                Row(children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _backCardColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              MaterialPageRoute(builder: (context)=> Club_details())
                              )
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset('assets/images/footprint.png'),
                                Text(
                                  'Eco-Vichaar',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Carbon FootPrint\nTracker',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _backCardColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>const LocationChoose())
                              );
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset('assets/images/jeevan.png'),
                                Text(
                                  'Garbage Pickup',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Pickup Garbages\nfrom these places',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ]),
                      ),
                    ),
                  ),
                ]),

          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _backCardColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset('assets/images/footprint.png'),
                          Text(
                            'Eco-Vichaar',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Carbon FootPrint\nTracker',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _backCardColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset('assets/images/jeevan.png'),
                          Text(
                            'Eco-Jeevan',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sustainable Lifestyle\nGuide',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ),
            ),
          ]
          )

              ]),
            )));
  }
}

// class ReusableIconCards extends StatelessWidget {
//   const ReusableIconCards(
//       {super.key,
//       required this.subText,
//       required this.titleText,
//       required this.imageWidget});
//   final String subText;
//   final String titleText;
//   final Widget imageWidget;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(4, 4, 4, 15),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20), color: Colors.white),
//       child: Column(children: [
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: _backCardColor,
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//           ),
//           onPressed: () {},
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               imageWidget,
//               Text(
//                 subText,
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           titleText,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )
//       ]),
//     );
//   }
// }