import 'package:carousel_slider/carousel_controller.dart';
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
        body: Container(
          child: CarouselSlider(options: CarouselOptions(), items: <Widget>[
            Container(
              height: double.infinity,
              child: Center(
                child: Text('1'),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              height: double.infinity,
              child: Center(
                child: Text('2'),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            Container(
              height: double.infinity,
              child: Center(
                child: Text('3'),
              ),
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Container(
              height: double.infinity,
              child: Center(
                child: Text('4'),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
