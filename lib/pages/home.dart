import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline/widgets/timeline.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        child: ListView(
          children: [
            Timeline(isFirst: true, isLast: false, isPast: true),
            Timeline(isFirst: false, isLast: false, isPast: true),
            Timeline(isFirst: false, isLast: false, isPast: true),
            Timeline(isFirst: false, isLast: true, isPast: true),
          ],
        ),
      ),
    );
  }
}
