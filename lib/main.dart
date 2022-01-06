import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

Audio audio1 = Audio.load('sounds/sound1.wav');
Audio audio2 = Audio.load('sounds/sound2.wav');
Audio audio3 = Audio.load('sounds/sound3.wav');

void main() => runApp(BasicDemo());

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('お話ししましょう')),
        body: SafeArea(
          child: CarouselSlider(
            options: CarouselOptions(
                height: double
                    .infinity), //carousel_slider need to adjust height here
            items: <Widget>[
              InkWell(
                //InkWell is an option make Container to be a button
                onTap: () {
                  audio1.play();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.redAccent),
                  child: Center(
                    child: Image.asset(
                        'answers/1.png'), //Image is a StatefulWidget and Image.asset is just a named constructor, you can use it directly on your widget tree.
                    //AssetImage is an ImageProvider which is responsible for obtaining the image of the specified path.
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  audio2.play();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Center(
                    child: Image.asset('answers/2.png'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  audio3.play();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Center(
                    child: Image.asset('answers/3.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
