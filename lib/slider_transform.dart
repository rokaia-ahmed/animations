import 'package:flutter/material.dart';

class SliderAnimation extends StatefulWidget {
  const SliderAnimation({super.key});

  @override
  State<SliderAnimation> createState() => _SliderAnimationState();
}

class _SliderAnimationState extends State<SliderAnimation> {
  double _value = 0.0;
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
          Container(
            transform: Matrix4.rotationZ(_value),
            width: 200,
            height: 200,
            color: Colors.blue,
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
              setState(() {});
            },
            min: 0.0,
            max: 360.0,
            label: '$_value',
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
