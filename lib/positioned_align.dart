import 'package:flutter/material.dart';

class PositionedAlign extends StatefulWidget {
  const PositionedAlign({super.key});

  @override
  State<PositionedAlign> createState() => _PositionedAlignState();
}

class _PositionedAlignState extends State<PositionedAlign> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Text(
              'My Text',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedPositioned(
            right: 110,
            bottom:isVisible==true? 320: 500,
            duration: Duration(seconds: 2),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
          ),
          CircleAvatar(
            child: Text('A'),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isVisible = !isVisible;
          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
