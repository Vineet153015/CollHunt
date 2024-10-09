import 'package:collhunt/Widgets/CollegeRowOutlined.dart';
import 'package:flutter/material.dart';

class CollegeRow extends StatelessWidget {
  final List<String> colleges;

  const CollegeRow({
    Key? key,
    required this.colleges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: colleges.map((college) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(college),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class BedSelectionWidget extends StatefulWidget {
  @override
  _BedSelectionWidgetState createState() => _BedSelectionWidgetState();
}

class _BedSelectionWidgetState extends State<BedSelectionWidget> {
  int _selectedBed = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBedButton(4, true),
        _buildBedButton(3, false),
        _buildBedButton(2, false),
        _buildBedButton(1, false),
      ],
    );
  }

  Widget _buildBedButton(int bedNumber, bool isDefaultSelected) {
    bool isSelected = _selectedBed == bedNumber ||
        (isDefaultSelected && _selectedBed == null);

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBed = bedNumber;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF0E3C6E) : Colors.white,
          border: Border.all(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              Icons.single_bed,
              size: 18,
              color: isSelected ? Colors.white : Colors.black,
            ),
            const SizedBox(width: 4),
            Text(
              bedNumber.toString(),
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Colors.black, // Text color based on selection
              ),
            ),
          ],
        ),
      ),
    );
  }
}
