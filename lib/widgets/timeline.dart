import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timeline extends StatelessWidget {

  final bool isFirst;
  final bool isLast;
  final bool isPast;

  const Timeline({ super.key, required this.isFirst, required this.isLast, required this.isPast });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: Colors.blueAccent,
        ),
        indicatorStyle: IndicatorStyle(
          width: 40.0,
          color: Colors.blueAccent,
          iconStyle: IconStyle(iconData: Icons.done, color: Colors.white),
        ),
      ),
    );
  }
}
