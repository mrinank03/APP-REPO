import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HostelPage extends StatefulWidget {
  HostelPage({Key? key}) : super(key: key);

  final List<String> _images1 = [
    'assets/images/hostelB.jpg',
    'assets/images/hostelD.jpg',
    'assets/images/hostelE.jpg',
    'assets/images/hostelL.jpeg',
  ];
  final List<String> _images2 = [
    'assets/images/hostelB.jpg',
    'assets/images/hostelD.jpg',
    'assets/images/hostelE.jpg',
    'assets/images/hostelL.jpeg',
  ];

  @override
  State<HostelPage> createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  final CarouselController _carouselController1 = CarouselController();
  final CarouselController _carouselController2 = CarouselController();

  @override
  void initState() {
    super.initState();

    // Add this to start the animation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _carouselController1.nextPage(
          duration: const Duration(milliseconds: 2500));
      _carouselController2.nextPage(
          duration: const Duration(milliseconds: 2500));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgr.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: double.maxFinite,
          width: double.maxFinite,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'HOSTEL',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Boys hostel',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1.5,
                  indent: 80,
                  endIndent: 80,
                ),
                // Carousel
                CarouselSlider(
                  carouselController: _carouselController1,
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    reverse: true,
                    pageSnapping: false,
                    height: 146,
                    viewportFraction: 114 / MediaQuery.of(context).size.width,
                    onPageChanged: (_, __) {
                      _carouselController1.nextPage(
                          duration: const Duration(milliseconds: 2500));
                    },
                  ),
                  items: widget._images2
                      .map((image) => ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(image,
                                width: 90, fit: BoxFit.cover),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Girls hostel',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1.5,
                  indent: 80,
                  endIndent: 80,
                ),
                // Carousel
                CarouselSlider(
                  carouselController: _carouselController2,
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    reverse: false,
                    pageSnapping: false,
                    height: 146,
                    viewportFraction: 114 / MediaQuery.of(context).size.width,
                    onPageChanged: (_, __) {
                      _carouselController2.nextPage(
                          duration: const Duration(milliseconds: 2500));
                    },
                  ),
                  items: widget._images1
                      .map((image) => ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(image,
                                width: 90, fit: BoxFit.cover),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
