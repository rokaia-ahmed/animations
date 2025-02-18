import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   double  _height = 50;
   double _width = 50;
   Color _color = Colors.green;
   double _radius = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 4),
          curve: Curves.easeInOutCirc,
          height:_height ,
          width:_width ,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_radius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _height = 100;
          _width = 100;
          _color =_color==Colors.green? Colors.red:Colors.green;
          _radius = 12;
        });
      },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
