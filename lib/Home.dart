import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
  "https://wallpaperaccess.com/full/2637581.jpg",
  'https://4.bp.blogspot.com/-Es8QY2v114A/VBgRIGpesrI/AAAAAAAAQ2Q/YaFzl83NIv0/s1600/Canon%2BEOS%2B7D%2BMark%2BII%2BSample%2BJPEG%2BImage%2B05.jpg',
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Normal ////////////////
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://cdn.photographylife.com/wp-content/uploads/2014/06/Nikon-D810-Image-Sample-6.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              // flutter_slideShow /////////////
              ImageSlideshow(
                height: 200,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                isLoop: true,
                autoPlayInterval: 3000,
                children: [
                  Image.network(
                    'https://cdn.photographylife.com/wp-content/uploads/2014/06/Nikon-D810-Image-Sample-6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn.photographylife.com/wp-content/uploads/2014/09/Nikon-D750-Image-Samples-2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://4.bp.blogspot.com/-Es8QY2v114A/VBgRIGpesrI/AAAAAAAAQ2Q/YaFzl83NIv0/s1600/Canon%2BEOS%2B7D%2BMark%2BII%2BSample%2BJPEG%2BImage%2B05.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              // Carousel_Slider /////////////
              CarouselSlider(
                items: images.map((image) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(image, fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  reverse: false,
                  pauseAutoPlayOnTouch: false,
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
