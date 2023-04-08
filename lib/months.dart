import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthDisplay extends StatefulWidget {
  @override
  _MonthDisplayState createState() => _MonthDisplayState();
}

class _MonthDisplayState extends State<MonthDisplay> {
  DateTime _selectedDate = DateTime.now();

  void _nextMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month + 1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedDate = DateTime(_selectedDate.year, _selectedDate.month - 1, 1);
            });
          },
          child: Icon(Icons.arrow_back_ios_rounded),

        ),
        SizedBox(width: 10),
        Text(
          DateFormat('MMMM').format(_selectedDate),
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: _nextMonth,
          icon: Icon(Icons.arrow_forward_ios_rounded),
        ),

      ],
    );
  }
}
