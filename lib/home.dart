import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(

          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              Text(
                'Dashboard',
                style: TextStyle(fontWeight: FontWeight.bold , fontSize: 35),
              )
            ],
          ),
        ),
      ],
    );
  }
}
