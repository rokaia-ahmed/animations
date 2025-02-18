import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double _value = 0.0;
  double _angle = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Animation'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
              tween: Tween(
                begin: 0,
                end: _angle,
              ),
              duration: Duration(seconds: 1),
              builder: (context,angle,__)=>Transform.rotate(
                angle: _angle,
                child: Container(
                  width: 200,
                  height: 300,
                  color: Colors.blue,
                ),
              ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'value :$_value',
            style: TextStyle(fontSize: 30),
          ),
          Slider(
            value: _value,
            onChanged: (double value) {
              _value = value;
              _angle = value;
              setState(() {});
            },
            min: 0,
            max: 360,
            divisions: 4,
            label: '$_value',
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
