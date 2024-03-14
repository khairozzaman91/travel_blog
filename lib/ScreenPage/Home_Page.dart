
import 'package:flutter/material.dart';
import 'package:travelblog/widgets/most_popular_info.dart';
import 'package:travelblog/widgets/travel_info_detalis.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text("Travel Bolg", style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),
            ),
            const Expanded(
              flex: 2,
                child: TravelInfo(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical:50.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most Popular", style: TextStyle(fontSize: 18),),
                  Text("View All", style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
            const Expanded(
                flex: 1,
                child: MostPopularInfo(),
            ),



            Padding(

              padding: const EdgeInsets.only(left: 120.0, bottom:10),
              child: Container(
                height: 5,
                width: 200,
                color: Colors.black,
              ),
            ),
          ],

      )
      
    );
  }
}
