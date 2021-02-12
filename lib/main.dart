import 'package:flutter/material.dart';
import 'package:web_test/home.dart';
import 'package:web_test/nav_items.dart';
import 'package:web_test/resonsive.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5fb),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Expanded(
                      child: NavItems(),
                      flex: 1,
                    ),
                    Expanded(
                      child: Home(),
                      flex: 4,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 1,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
