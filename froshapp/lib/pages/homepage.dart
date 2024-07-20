import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:froshapp/leaderboard/leaderboard.dart';
import 'package:froshapp/leaderboard/leaderboard_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isMenuOpen = false;
  bool _isGestureDetectorActive = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _isGestureDetectorActive = _isMenuOpen;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final List<String> imagePaths = [
      'assets/images/event.png',
      'assets/images/event.png',
      'assets/images/event.png',
      'assets/images/event.png',
    ];

    final List<LeaderboardItem> leaderboardItems = [
      LeaderboardItem(name: 'Hood 1', score: 0.3),
      LeaderboardItem(name: 'Hood 2', score: 0.7),
      LeaderboardItem(name: 'Hood 3', score: 0.5),
      LeaderboardItem(name: 'Hood 4', score: 0.9),
    ];

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bgr.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: screenHeight * 0.165,
                    width: screenWidth * 0.79,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Swiper(
                    itemCount: imagePaths.length,
                    allowImplicitScrolling: true,
                    layout: SwiperLayout.DEFAULT,
                    autoplayDisableOnInteraction: true,
                    curve: Curves.decelerate,
                    viewportFraction: 0.5,
                    scale: 0.8,
                    autoplay: true,
                    autoplayDelay: 3000,
                    indicatorLayout: PageIndicatorLayout.SCALE,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePaths[index]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.001),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: screenWidth * 0.0059,
                        color: const Color.fromRGBO(180, 196, 0, 1),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, top: screenHeight * 0.0029),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LEADERBOARD",
                            style: TextStyle(
                              fontFamily: 'HomeFont',
                              fontSize: screenHeight * 0.023,
                              color: const Color.fromRGBO(180, 196, 0, 1),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.001),
                          Expanded(
                            child: Leaderboard(items: leaderboardItems),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.126),
              ],
            ),
            if (_isGestureDetectorActive)
              GestureDetector(
                onTap: _toggleMenu,
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            if (_isGestureDetectorActive)
              AbsorbPointer(
                absorbing: _isMenuOpen,
                child: GestureDetector(
                  onTap: _toggleMenu,
                  child: Container(
                    color: Colors.transparent,
                    height: double.infinity,
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.02),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: screenHeight * 0.18,
                  width: MediaQuery.of(context).size.width * 0.26,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage("assets/images/Vector.png"),
                    ),
                  ),
                ),
              ),
            ),
            CircularMenu(
              toggleButtonSize: _isMenuOpen
                  ? MediaQuery.of(context).size.height * 0.16
                  : MediaQuery.of(context).size.height * 0.1,
              toggleButtonColor: Colors.transparent,
              toggleButtonIconColor: Colors.transparent,
              radius: MediaQuery.of(context).size.width * 0.35,
              toggleButtonOnPressed: _toggleMenu,
              items: [
                CircularMenuItem(
                  badgeLabel: 'Society',
                  icon: Icons.person,
                  color: const Color.fromRGBO(180, 196, 0, 1),
                  onTap: () {
                    Navigator.pushNamed(context, '/society');
                  },
                ),
                CircularMenuItem(
                  icon: Icons.search,
                  color: const Color.fromRGBO(180, 196, 0, 1),
                  onTap: () {
                    Navigator.pushNamed(context, '/aboutus');
                  },
                ),
                CircularMenuItem(
                  icon: Icons.circle,
                  color: const Color.fromRGBO(180, 196, 0, 1),
                  onTap: () {
                    Navigator.pushNamed(context, '/hostels');
                  },
                ),
                CircularMenuItem(
                  icon: Icons.square,
                  color: const Color.fromRGBO(180, 196, 0, 1),
                  onTap: () {
                    Navigator.pushNamed(context, '/lifetiet');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
