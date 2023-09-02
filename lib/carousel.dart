import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  final List<String> images = [
    'assets/images/python.jpeg',
    'assets/images/dart.jpeg',
    'assets/images/html.jpeg',
  ];

  final List<String> places = ['PYTHON', 'DART', 'HTML'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: images.map((element) {
            return Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  element,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            height: 500,
            aspectRatio: 25 / 8,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 25 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: const TextStyle(
                letterSpacing: 8,
                decoration: TextDecoration.none,
                fontFamily: 'Electrolize',
                fontSize: 50, 
                color: Color.fromARGB(255, 222, 235, 236),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
