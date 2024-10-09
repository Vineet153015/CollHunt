import 'package:collhunt/Widgets/CollegeList.dart';
import 'package:collhunt/Widgets/TopBarShape.dart';
import 'package:flutter/material.dart';

class Collegelistscreen extends StatelessWidget{
  const Collegelistscreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarSearchOnly(),
          Expanded(
              child: ListView(
                children: [
                  CollegeCard(
                      context: context,
                      title: 'GHJK Engineering college',
                      description:
                      'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nEu ut imperdiet sed nec ullamcorper.',
                      imagePath: 'assets/images/1.jpeg',
                      Viewers: '468+',
                      Grade: '4.3',
                    NoStudents: "More than 1000+ students have been placed",
                  )
                ],
              )
          )
        ],
      ),
    );
  }}