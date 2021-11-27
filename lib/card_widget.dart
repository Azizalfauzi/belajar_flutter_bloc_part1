import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final String title;
  final int number;
  const CounterCard({Key? key, required this.number, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Container(
            height: 40,
            width: 70,
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Text(
              '$number',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
