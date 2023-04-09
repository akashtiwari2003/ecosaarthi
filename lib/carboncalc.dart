import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class carboncalc extends StatelessWidget {
  const carboncalc({super.key});

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
                            'assets/images/carbon.png',
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: const Text(
                              ' Carbon Footprint Calculator?',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 252, 252, 252),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 60.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      onPressed: () {

                      },

                      child: Column(
                        children: [
                          // Container(color: Color(0xFFFFECC6),
                          // height: 100,
                          // width: 100,),
                          // Image.asset(
                          //   'assets/images/green1.png',
                          //   height: 80,
                          //   width: 700,
                          // ),
                          Text(
                            'Carbon footprint is like a sneaky stalker that follows us everywhere, leaving its invisible mark on the environment. It is the environmental equivalent of a guilty conscience, reminding us that our actions have consequences that can linger long after we are gone.Keep it in check to minimize your impact on the planet.',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 15.0, vertical: 15.0),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(40.0),
                    //     ),
                    //   ),
                    //   onPressed: () {},
                    //   child: Stack(
                    //     alignment: Alignment.bottomCenter,
                    //     children: [
                    //       // Container(color: Color(0xFFFFECC6),
                    //       // height: 100,
                    //       // width: 100,),
                    //       Image.asset(
                    //         'assets/images/green2.png',
                    //         height: 80,
                    //         width: 700,
                    //       ),
                    //       Container(
                    //         child: const Text(
                    //           'Tree Plantation Campaigns',
                    //           style: TextStyle(
                    //             fontFamily: 'Roboto',
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 15.0, vertical: 15.0),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(40.0),
                    //     ),
                    //   ),
                    //   onPressed: () {},
                    //   child: Stack(
                    //     alignment: Alignment.bottomCenter,
                    //     children: [
                    //       // Container(color: Color(0xFFFFECC6),
                    //       // height: 100,
                    //       // width: 100,),
                    //       Image.asset(
                    //         'assets/images/green3.png',
                    //         height: 80,
                    //         width: 700,
                    //       ),
                    //       Container(
                    //         child: const Text(
                    //           'Green Groups',
                    //           style: TextStyle(
                    //             fontFamily: 'Roboto',
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {

    QuickAlert.show(
    context: context,
    type: QuickAlertType.success,
    title: 'Redirecting...',
    text: 'Make your copy of the sheet and calculate!',
    confirmBtnText: 'Ok',
    onConfirmBtnTap: ()=>{
      launch('https://docs.google.com/spreadsheets/d/1d2HVk5DotWI0uxro1z5jXJYLsCZVauaE/edit?usp=sharing&ouid=113381120243897993914&rtpof=true&sd=true')
    },
    confirmBtnColor: Colors.green,
    );
    }

                        ,
                        child: Text('CO2 FOOTPRINT CALCULATOR'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 70, 221, 0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }


}