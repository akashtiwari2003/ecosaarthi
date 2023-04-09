import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finlogin/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Club_details extends StatelessWidget {


  @override
  // State<Club_details> createState() => _Club_detailsState();
// }
//
// class _Club_detailsState extends State<Club_details> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Column(

            children: [
              SafeArea(child: Stack(
                children: [
                  Image.asset('assets/images/event.png'),
                  IconButton(
                    onPressed: (){


                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Dashboard()));

                    },
                    icon: Icon(Icons.arrow_back_outlined,size: 40,color:Colors.black,) ,
                  ),
                ],
              ),),


              Positioned(
                child:  Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text('Hallo World',style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),

                ),

              ),
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.black,
                        size: 50.0,
                      ),

                      Icon(
                        Icons.groups,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.black,
                        size: 50.0,
                      ),
                    ],
                  )

              ),
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: const <Widget>[
                      Icon(
                        FontAwesomeIcons.instagram,
                        size: 50,
                      ),
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 50,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        size: 50,
                      ),
                    ],
                  )

              ),
              Positioned(
                child:  Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text("Activities", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),

                ),

              ),
              SingleChildScrollView(

                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(0.0,2.0),
                          ),]
                      ),
                      child: ListTile(
                        dense:true,
                        contentPadding: EdgeInsets.only(left: 20.0, right: 4.0,top: 18.0,bottom: 18.0),

                        leading: Image.network(
                          'https://s3-alpha-sig.figma.com/img/de03/e40b/d5ac00c927bde914907f4c9df773796b?Expires=1679270400&Signature=QlolUxG2hfVfid~fcBvzcmYlmNHha7THepu5AETJ-HjKJ6iRPSD-ibFII1BA3JYZdG1DBtM3SYlgB4w2DEylZsE7oykPQeddu7mNZQWpmhJH5~X-J3V8KRL8fX6g60sXMBI9RsLNrEx~VZ--zcHTyyHqu7-FwpGISLQhF4IGKe7CenMwQWTOSF7usgW8UI6pL~zWVgakwpZdx85ryyAu9LkgTQDg6GmbjTtQK8-ubZysoRJ5TACjacpQ5ICB2CGZWZ-sxpzMRBpFuO9eO~h1Whs1gld3bowgxBxUOyHPeS3qIu1cGqnbeHDjRashQ6bu00GAtVXrYOP1mySRq~r4Gg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                        ),
                        title: Text('Hackreboot',style: TextStyle(fontSize: 26.0),),
                        subtitle: Text('Technical Club',style:TextStyle(color: Colors.blue),),

                        onTap: (){
                          color: Colors.grey;
                        },



                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(0.0,2.0),
                          ),]
                      ),
                      child: ListTile(
                        dense:true,
                        contentPadding: EdgeInsets.only(left: 20.0, right: 4.0,top: 18.0,bottom: 18.0),
                        leading: Image.network(
                          'https://s3-alpha-sig.figma.com/img/de03/e40b/d5ac00c927bde914907f4c9df773796b?Expires=1679270400&Signature=QlolUxG2hfVfid~fcBvzcmYlmNHha7THepu5AETJ-HjKJ6iRPSD-ibFII1BA3JYZdG1DBtM3SYlgB4w2DEylZsE7oykPQeddu7mNZQWpmhJH5~X-J3V8KRL8fX6g60sXMBI9RsLNrEx~VZ--zcHTyyHqu7-FwpGISLQhF4IGKe7CenMwQWTOSF7usgW8UI6pL~zWVgakwpZdx85ryyAu9LkgTQDg6GmbjTtQK8-ubZysoRJ5TACjacpQ5ICB2CGZWZ-sxpzMRBpFuO9eO~h1Whs1gld3bowgxBxUOyHPeS3qIu1cGqnbeHDjRashQ6bu00GAtVXrYOP1mySRq~r4Gg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                        ),
                        title: Text('Hackreboot',style: TextStyle(fontSize: 26.0),),
                        subtitle: Text('Technical Club',style:TextStyle(color: Colors.blue),),

                        onTap: (){

                        },



                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(0.0,2.0),
                          ),]
                      ),
                      child: ListTile(
                        dense:true,
                        contentPadding: EdgeInsets.only(left: 20.0, right: 4.0,top: 18.0,bottom: 18.0),

                        leading: Image.network(
                          'https://s3-alpha-sig.figma.com/img/de03/e40b/d5ac00c927bde914907f4c9df773796b?Expires=1679270400&Signature=QlolUxG2hfVfid~fcBvzcmYlmNHha7THepu5AETJ-HjKJ6iRPSD-ibFII1BA3JYZdG1DBtM3SYlgB4w2DEylZsE7oykPQeddu7mNZQWpmhJH5~X-J3V8KRL8fX6g60sXMBI9RsLNrEx~VZ--zcHTyyHqu7-FwpGISLQhF4IGKe7CenMwQWTOSF7usgW8UI6pL~zWVgakwpZdx85ryyAu9LkgTQDg6GmbjTtQK8-ubZysoRJ5TACjacpQ5ICB2CGZWZ-sxpzMRBpFuO9eO~h1Whs1gld3bowgxBxUOyHPeS3qIu1cGqnbeHDjRashQ6bu00GAtVXrYOP1mySRq~r4Gg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                        ),
                        title: Text('Hackreboot',style: TextStyle(fontSize: 26.0),),
                        subtitle: Text('Technical Club',style:TextStyle(color: Colors.blue),),

                        onTap: (){

                        },



                      ),
                    ),


                  ],



                ),


              )
            ]
        )

    );

  }
}
