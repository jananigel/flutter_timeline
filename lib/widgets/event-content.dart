import 'package:flutter/material.dart';

class EventContent extends StatelessWidget {

  final String title;
  final String detail;

  const EventContent({ super.key, required this.title, required this.detail });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            detail,
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: 1.0,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
