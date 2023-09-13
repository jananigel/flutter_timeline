import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline/widgets/event-card.dart';

class Timeline extends StatelessWidget {

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const Timeline({ super.key, required this.isFirst, required this.isLast, required this.isPast, required this.eventCard });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.blueAccent : Colors.lightBlue.shade100,
        ),
        indicatorStyle: IndicatorStyle(
          width: 40.0,
          color: isPast ? Colors.blueAccent : Colors.lightBlue.shade100,
          iconStyle: IconStyle(iconData: Icons.done, color: isPast ? Colors.white : Colors.lightBlue.shade100,),
        ),
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
