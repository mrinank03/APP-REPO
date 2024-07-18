import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() {
  runApp(const LifeThaparPage());
}

class LifeThaparPage extends StatelessWidget {
  const LifeThaparPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return cosCard();
            case 1:
              return sportsCard();
            case 2:
              return libraryCard();
            default:
              return Container();
          }
        },
        itemCount: 3,
        indicatorLayout: PageIndicatorLayout.SCALE,
        control: const SwiperControl(),
        curve: Curves.easeInOut,
        controller: SwiperController(),
      ),
    );
  }

  Widget cosCard() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bgr.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Transform.translate(
            offset: const Offset(-15, 55),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 235,
                height: 115,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LIFE',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'AT',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'THAPAR',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 76,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CULTURE',
                                style: TextStyle(
                                    fontSize: 21, color: Colors.white),
                              ),
                              Text(
                                'OAT AND',
                                style: TextStyle(
                                    fontSize: 21, color: Colors.white),
                              ),
                              Text(
                                'SHOPPING COMPLEX',
                                style: TextStyle(
                                    fontSize: 21, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 30, right: 20),
                    child: Text(
                      'COS is the predominant shopping attraction of the campus, filled with eateries of student-friendly prices. In addition to this, there also exists day-to-day needs such as drycleaning, electronics and stationery shops. The Open-Air-Theatre and activity rooms add a space of cultural practice and purpose. Overall, the services and experiences at COS make it an engaging place of rendezvous for the students.',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 120,
          left: 150,
          child: Image.asset(
            'assets/images/cos.png',
            fit: BoxFit.contain,
            width: 330,
            height: 330,
          ),
        ),
      ],
    );
  }

  Widget sportsCard() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bgr.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Transform.translate(
            offset: const Offset(-15, 55),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 230,
                height: 110,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LIFE',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'AT',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'THAPAR',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SPORTS',
                                  style: TextStyle(
                                      fontSize: 26, color: Colors.white),
                                ),
                                Text(
                                  'COMPLEX',
                                  style: TextStyle(
                                      fontSize: 26, color: Colors.white),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 40, right: 20),
                    child: Text(
                      'Physical recreation has always been integral to Thapar Institute, with tournaments in various sports like cricket, football, and basketball. Major events include URJA, Thaparlympics, and Annual Athletic Meet. The institute boasts top facilities, such as an international standard athletic track, synthetic tennis courts, synthetic basketball court, and swimming pool. New students receive institute-branded sportswear, and a dedicated sports section with seven full-time coaches supports activities.',
                      style: TextStyle(fontSize: 17.5, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 110,
          left: 150,
          child: Image.asset(
            'assets/images/sports.png',
            fit: BoxFit.contain,
            width: 330,
            height: 330,
          ),
        ),
      ],
    );
  }

  Widget libraryCard() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bgr.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Transform.translate(
            offset: const Offset(-15, 55),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 230,
                height: 110,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LIFE',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'AT',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Text(
                          'THAPAR',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Transform.translate(
                    offset: const Offset(0, 10),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 90,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NAVA NALANDA',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                'CENTRAL',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                'LIBRARY',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 50, right: 20),
                    child: Text(
                      'Nava Nalanda Central Library, the pride of Thapar Institute, is a five storied building featuring marble and red stone architecture with a relaxing garden area. It offers over 800 seats, cutting-edge technology, group discussion rooms, and an 80-seat seminar hall. The library supports digital collections, housing over 200,000 e-books, and provides excellent study environments and facilities',
                      style: TextStyle(fontSize: 17.5, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 110,
          left: 150,
          child: Image.asset(
            'assets/images/library.png',
            fit: BoxFit.contain,
            width: 330,
            height: 330,
          ),
        ),
      ],
    );
  }
}
