import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasicDemo());

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('お話ししましょう')),
      body: Expanded(
        child: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: list
                .map((item) => Container(
                      child: Center(child: Text(item.toString())),
                      color: Colors.green,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
