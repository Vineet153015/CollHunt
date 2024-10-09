import 'package:collhunt/Widgets/BottomNavigationWidget.dart';
import 'package:collhunt/Widgets/CollegeList.dart';
import 'package:collhunt/Widgets/CollegeRowOutlined.dart';
import 'package:collhunt/Widgets/TopBarShape.dart';
import 'package:flutter/material.dart';

class Collegelistscreen extends StatefulWidget{
  const Collegelistscreen({super.key});

  @override
  State<Collegelistscreen> createState() => _CollegelistscreenState();
}

class _CollegelistscreenState extends State<Collegelistscreen> {

  int _currentIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarSearchOnly(),
          SizedBox(height: 20),
          CollegeRow(
            colleges: [
              'MVSH Engineering College',
              'Christ University',
              'APB Medical College',
            ],
          ),
          Expanded(
              child: ListView(
                children: [
                  Row(
                  ),
                  CollegeCard(
                      context: context,
                      title: 'GHJK Engineering college',
                      description:
                      'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nEu ut imperdiet sed nec ullamcorper.',
                      imagePath: 'assets/images/1.jpeg',
                      Viewers: '468+',
                      Grade: '4.3',
                    NoStudents: "More than 1000+ students have been placed",
                  ),
                  CollegeCard(
                      context: context,
                      title: 'Bachelor of Technology',
                      description:
                      'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nEu ut imperdiet sed nec ullamcorper.',
                      imagePath: 'assets/images/2.jpeg',
                      Viewers: '568+',
                      Grade: '3.9',
                    NoStudents: "More than 1500+ students have been placed",
                  ),
                  CollegeCard(
                    context: context,
                    title: 'GHJK Engineering college',
                    description:
                    'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nEu ut imperdiet sed nec ullamcorper.',
                    imagePath: 'assets/images/1.jpeg',
                    Viewers: '468+',
                    Grade: '4.3',
                    NoStudents: "More than 1000+ students have been placed",
                  ),
                ],
              )
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: _currentIndex, onTap: _onTabTapped ,),
    );
  }}