
import 'package:flutter/material.dart';
import 'package:travelblog/Model/travel.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({super.key});

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {

  final travel_list = Travel.travelInfo();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: PageView.builder(

        itemCount: travel_list.length,
          itemBuilder: (context, index){
           var travel = travel_list[index];

           return Stack(
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
                   child: Image.asset(travel.img,
                     width:MediaQuery.of(context).size.width,
                     height:MediaQuery.of(context).size.height,
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
               Positioned(
                 bottom: 80,
                   left: 40,
                   child: Column(
                     children: [
                    Text(travel.name, style: const TextStyle(fontSize: 26, color: Colors.white),),
                    Text(travel.location, style: const TextStyle(fontSize: 26, color: Colors.white),),

                  ],
               )),
               Positioned(
                   right: 10,
                   bottom: 1,
                   child:Container(
                    height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                       color: Colors.yellow,
                       borderRadius: BorderRadius.circular(50),
                     ),
                     child: const Icon(Icons.arrow_forward_outlined, size: 40,),

                   ))
             ],
           );


          }),

    );
  }
}
