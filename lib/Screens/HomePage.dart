import 'package:collhunt/Widgets/BottomNavigationWidget.dart';
import 'package:collhunt/Widgets/CollegeCard.dart';
import 'package:collhunt/Widgets/TopBarShape.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            CurvedTopBar(),
            Expanded(
              child: ListView(
                children: [
                  CollegeCardWidget(
                      context: context,
                      title: 'Top Schools',
                      description:
                          'Searching for the best school for you? Use our Advanced School Search, and filter out the schools that are fit for you.',
                      imagePath: 'assets/images/1.jpeg',
                      count: '+106',
                      Grade: 'Schools'),
                  CollegeCardWidget(
                      context: context,
                      title: 'Top Schools',
                      description:
                          'Searching for the best school for you? Use our Advanced School Search, and filter out the schools that are fit for you.',
                      imagePath: 'assets/images/2.jpeg',
                      count: '+126',
                      Grade: 'College'),
                  CollegeCardWidget(
                      context: context,
                      title: 'Exams',
                      description:
                          'Find an end to end information about the exams that are happening in India.',
                      imagePath: 'assets/images/3.jpeg',
                      count: '+16',
                      Grade: 'Exams'),
                  CollegeCardWidget(
                      context: context,
                      title: 'Exams',
                      description:
                          'Find an end to end information about the exams that are happening in India.',
                      imagePath: 'assets/images/2.jpeg',
                      count: '+16',
                      Grade: 'Exams'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
        ));
  }
}
