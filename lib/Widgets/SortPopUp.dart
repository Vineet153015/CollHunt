
import 'package:collhunt/Screens/CollegeListScreen.dart';
import 'package:collhunt/Widgets/CollegeList.dart';
import 'package:flutter/material.dart';

class SortByPopup extends StatefulWidget {
  @override
  _SortByPopupState createState() => _SortByPopupState();
}

class _SortByPopupState extends State<SortByPopup> {
  // Store the selected index
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Divider(),
          _buildListTile(Icons.school, 'Bachelor of Technology', 0),
          _buildListTile(Icons.architecture, 'Bachelor of Architecture', 1),
          _buildListTile(Icons.local_pharmacy, 'Pharmacy', 2),
          _buildListTile(Icons.balance, 'Law', 3),
          _buildListTile(Icons.business, 'Management', 4),
        ],
      ),
    );
  }

  ListTile _buildListTile(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(
        // Change icon based on selection state
        _selectedIndex == index
            ? Icons.radio_button_checked
            : Icons.radio_button_unchecked,
        color: _selectedIndex == index ? Colors.blue : Colors.grey,
      ),
      onTap: () {
        // Update the selected index and refresh UI
        setState(() {
          _selectedIndex = index;
        });

        // Navigate to the new page based on the selected index
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Collegelistscreen(), // Pass title to new page
          ),
        );
      },
    );
  }
}
