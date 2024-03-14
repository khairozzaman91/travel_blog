import 'package:flutter/material.dart';
import 'package:travelblog/Model/travel.dart';

class MostPopularInfo extends StatefulWidget {
  const MostPopularInfo({super.key});

  @override
  State<MostPopularInfo> createState() => _MostPopularInfoState();
}

class _MostPopularInfoState extends State<MostPopularInfo> {
  final most_popular = Travel.mostpopularplace();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
          // itemCount: most_popular.length,
          itemBuilder: (context, index){
            var travel = most_popular[index];

            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(travel.img,
                   height: 150,
                      width: 150,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) =>const SizedBox(width: 15.0,),
          itemCount: most_popular.length
      ),
    );
  }
}
