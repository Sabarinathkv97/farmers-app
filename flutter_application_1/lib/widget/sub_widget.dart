import 'package:flutter/material.dart';

class sub_widget extends StatefulWidget {
  const sub_widget({super.key});

  @override
  State<sub_widget> createState() => _sub_widgetState();
}

class _sub_widgetState extends State<sub_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
                'https://farmersfz.com/assets/subscription/assets/basket_1.jpg'),
          ),
          Text(
            'How its Works',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Manage your weekly vegetable subscription hassle free',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
