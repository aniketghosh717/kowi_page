import 'package:flutter/material.dart';
import 'package:weight_slider/weight_slider.dart';





class MyWeightSlider extends StatefulWidget {



  @override
  _MyWeightSliderState createState() => _MyWeightSliderState();
}

class _MyWeightSliderState extends State<MyWeightSlider> {
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: WeightSlider(

              weight: weight,
              minWeight: 40,
              maxWeight: 120,
              onChange: (val) => setState(() => this.weight = val),
        unit: '',


            ),
    );

  }
}