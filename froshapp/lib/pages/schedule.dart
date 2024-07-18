import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:froshapp/leaderboard/leaderboard.dart';
import 'package:froshapp/leaderboard/leaderboard_item.dart';
import 'dart:ui';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final List<String> imagePaths = [
    'assets/images/event.png',
    'assets/images/event.png',
    'assets/images/event.png',
    'assets/images/event.png',
  ];
  final List<String> imagePaths1 = [
    'assets/images/grp1.png',
    'assets/images/grp3.png',
    'assets/images/grp2.png',
    'assets/images/grp3.png',
    'assets/images/grp2.png',
    'assets/images/grp3.png',
    'assets/images/grp1.png',
    'assets/images/grp2.png',
    'assets/images/grp2.png',
    'assets/images/grp3.png',
  ];

  final List<LeaderboardItem> leaderboardItems = [
    LeaderboardItem(name: 'Hood 1  ', score: 0.3),
    LeaderboardItem(name: 'Hood 2 ', score: 0.4),
    LeaderboardItem(name: 'Hood 3 ', score: 0.7),
    LeaderboardItem(name: 'Hood 4 ', score: 0.5),
  ];
  List<String> texts = [
    'EVENT 1',
    'EVENT 2',
    'EVENT 3',
    'EVENT 4',
    'EVENT 5',
    'EVENT 6',
    'EVENT 7',
    'EVENT 8',
    'EVENT 9',
    'EVENT 10',
  ];

  List<String> dateOfEvent = [
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24',
    '1/8/24'
  ];

  List<String> time = [
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
  ];
  List<String> location = [
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
    "Fete Area",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Background image container
      Positioned.fill(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgr.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 160,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Swiper(
                  viewportFraction: 0.65,
                  scale: 0.88,
                  autoplayDelay: 3000,
                  indicatorLayout: PageIndicatorLayout.SCALE,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(imagePaths[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  itemCount: imagePaths.length,
                  layout: SwiperLayout.DEFAULT,
                  autoplayDisableOnInteraction: true,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.99,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 3,
                      color: const Color.fromRGBO(180, 196, 0, 1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "LEADERBOARD",
                          style: TextStyle(
                            fontFamily: 'HomeFont',
                            fontSize: 22,
                            color: Color.fromRGBO(180, 196, 0, 1),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Leaderboard(items: leaderboardItems),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Vector.png"),
                    ),
                  ),
                  height: 120,
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ),

      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          color: Colors.white.withOpacity(0.23),
        ),
      ),
      ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          bool isEven = index % 2 == 1;
          return Align(
              alignment: isEven ? Alignment.centerLeft : Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage(imagePaths1[index]),
                          fit: BoxFit.contain)),

                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 20, top: 24),
                  //       child: Text(
                  //         texts[index],
                  //         style: const TextStyle(
                  //             color: Colors.white,
                  //             fontFamily: 'HomeFont',
                  //             fontSize: 25),
                  //       ),
                  //     ),
                  //     const Padding(
                  //       padding: EdgeInsets.only(left: 20, top: 5),
                  //       child: Icon(
                  //         Icons.calendar_month,
                  //         size: 25,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     const Padding(
                  //       padding: EdgeInsets.only(left: 20, top: 15),
                  //       child: Icon(
                  //         Icons.watch,
                  //         size: 25,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     const Padding(
                  //       padding: EdgeInsets.only(left: 20, top: 15),
                  //       child: Icon(
                  //         Icons.location_on,
                  //         size: 25,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     Transform.translate(
                  //       offset: const Offset(55, -105),
                  //       child: Text(dateOfEvent[index],
                  //           style: const TextStyle(
                  //               color: Colors.white,
                  //               fontFamily: 'HomeFont',
                  //               fontSize: 20)),
                  //     ),
                  //     Transform.translate(
                  //       offset: const Offset(55, -95),
                  //       child: Text(time[index],
                  //           style: const TextStyle(
                  //               color: Colors.white,
                  //               fontFamily: 'HomeFont',
                  //               fontSize: 20)),
                  //     ),
                  //     Transform.translate(
                  //       offset: const Offset(55, -85),
                  //       child: Text(location[index],
                  //           style: const TextStyle(
                  //               color: Colors.white,
                  //               fontFamily: 'HomeFont',
                  //               fontSize: 20)),
                  //     ),
                  //   ],
                  // ),
                ),
              ));
        },
      ),
    ]);
  }
}
