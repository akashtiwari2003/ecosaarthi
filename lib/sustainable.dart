import 'package:flutter/material.dart';

const _backCardColor = Color(0xFFFFECC6);
Widget buildSheet(String bodyText) => Container(
  margin: EdgeInsets.all(10),
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
  padding: EdgeInsets.all(15),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        bodyText,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(onPressed: () {}, child: Text('Show More')),
    ],
  ),
);
String susTrasport =
    'Sustainable transportation refers to the use of transportation modes and practices that have a reduced impact on the environment and promote sustainable living. It involves using modes of transportation that are energy-efficient, produce fewer emissions, and have minimal negative impacts on the environment and human health. Sustainable transportation options include walking, cycling, public transport, carpooling, and electric or hybrid vehicles. By choosing sustainable transportation options, we can reduce our carbon footprint, improve air quality, and mitigate the impacts of climate change. Overall, sustainable transportation plays a critical role in creating a healthier and more sustainable world for ourselves and future generations.';

String susFood =
    'Sustainable food choices refer to selecting foods that prioritize environmental, social, and economic sustainability. It involves choosing foods that are produced with minimal harm to the environment, conserve natural resources, and promote fair labor practices.To make sustainable food choices, one can choose locally grown produce to reduce the carbon footprint of transportation, opt for foods with minimal packaging to minimize waste, and select organic or non-GMO products to support environmentally-friendly farming practices.In addition, sustainable food choices involve considering the social and economic impact of our food choices.';

String susRecycle =
'''A recycling guide is a tool that provides information on how to properly recycle various materials. It outlines what can and cannot be recycled, and how to prepare materials for recycling. Recycling guides can help individuals and communities reduce waste and promote sustainability.

A good recycling guide will also provide tips on reducing waste and promoting sustainability in other ways, such as by composting, using reusable products, and reducing energy consumption.

''';

class Slg extends StatelessWidget {
  const Slg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/map.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ), // background image
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.all(70),
                        padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
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
                                Image.asset('assets/images/truck.png'),
                                Text(
                                  'Sustatainable LifeStyle\nGuide',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
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
                          ),
                        ]),
                      ),
                    ),
                    Expanded(
                        child: Text(
                          'Be a Part',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        )),
                    Stack(
                      children: [],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: GestureDetector(
                            onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildSheet(susTrasport)),
                            child: ListTile(
                              leading: Image.asset('assets/images/truck.png'),
                              title: Text('Sustainable \nTransportation'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: GestureDetector(
                            onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildSheet(susFood)),
                            child: ListTile(
                              leading: Image.asset('assets/images/truck.png'),
                              title: Text('Sustainable \nFood Choices'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: GestureDetector(
                            onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildSheet(susRecycle)),
                            child: ListTile(
                              leading: Image.asset('assets/images/truck.png'),
                              title: Text('Sustainable \nRecycling idea'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}