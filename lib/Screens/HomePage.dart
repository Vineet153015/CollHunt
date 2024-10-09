import 'package:collhunt/Widgets/CollegeCard.dart';
import 'package:collhunt/Widgets/TopBarShape.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF0E3C6E),
        currentIndex: 0, // Set the selected tab
        onTap: (index) {},
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_sharp),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

