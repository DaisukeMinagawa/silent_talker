import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasicDemo());

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('お話ししましょう')),
        body: SafeArea(
          child: CarouselSlider(
              options: CarouselOptions(height: double.infinity),
              items: <Widget>[
                Container(
                  child: Center(child: Image.asset('answers/1.png')),
                  decoration: BoxDecoration(color: Colors.greenAccent),
                ),
                Container(
                  child: Center(child: Image.asset('answers/2.png')),
                  decoration: BoxDecoration(color: Colors.redAccent),
                ),
                Container(
                  child: Center(child: Image.asset('answers/3.png')),
                  decoration: BoxDecoration(color: Colors.blueGrey),
                ),
              ]),
        ),
      ),
    );
  }
}
