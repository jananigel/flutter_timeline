import 'package:flutter/material.dart';
import 'package:timeline/widgets/timeline.dart';
import 'package:timeline/widgets/event-content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      appBar: AppBar(
        title: Text('Order Process'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 2.0),
        child: ListView(
          children: [
            Timeline(isFirst: true, isLast: false, isPast: true, eventCard: EventContent(title: 'Order Placed', detail: 'System has received your order')),
            Timeline(isFirst: false, isLast: false, isPast: true, eventCard: EventContent(title: 'Order Confirmed', detail: 'This order has confirmed')),
            Timeline(isFirst: false, isLast: false, isPast: true, eventCard: EventContent(title: 'Order Shipped', detail: 'Your order has shipped')),
            Timeline(isFirst: false, isLast: true, isPast: false, eventCard: EventContent(title: 'Delivered', detail: 'Your order has been delivered')),
          ],
        ),
      ),
    );
  }
}
