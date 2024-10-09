
import 'package:flutter/material.dart';

class CurvedTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225, // The desired height of the top bar
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF0E3C6E), // Background color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), // Adjust this for the desired curve
          bottomRight: Radius.circular(30), // Adjust this for the desired curve
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            // Add any content inside the top bar here
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your own way",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Search in 600 colleges around!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // You can add a notification icon or other elements
            Positioned(
              top: 16,
              right: 16,
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            // Add a search bar at the bottom of the container
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25), // Rounded search bar
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for colleges, schools...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.mic, color: Colors.blue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopBarSearchOnly extends StatelessWidget{
  const TopBarSearchOnly({super.key
  });

  @override
  Widget build(BuildContext context) => Container(
      height: 155, // The desired height of the top bar
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF0E3C6E), // Background color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), // Adjust this for the desired curve
          bottomRight: Radius.circular(30), // Adjust this for the desired curve
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            // Add a search bar at the bottom of the container
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25), // Rounded search bar
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for colleges, schools...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.mic, color: Colors.blue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
