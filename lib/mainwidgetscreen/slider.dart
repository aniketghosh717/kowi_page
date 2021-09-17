

import 'package:flutter/material.dart';




class SimpleSlider extends StatefulWidget {
  const SimpleSlider({Key? key}) : super(key: key);



  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  double _currentSliderValue = 50;


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Slider(
        activeColor: Color(0xFFff5a5a),
        inactiveColor: Colors.grey,
        value: _currentSliderValue,
        min: 0,
        max: 100,
        divisions: 100,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
            // ignore: avoid_print
            print(value);
          });
        },
      ),
    );
  }
}
