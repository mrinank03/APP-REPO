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

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 180).animate(_controller);
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/event.png',
      'assets/images/event.png',
      'assets/images/event.png',
      'assets/images/event.png',
    ];

    final List<LeaderboardItem> leaderboardItems = [
      LeaderboardItem(name: 'Hood 1  ', score: 0.3),
      LeaderboardItem(name: 'Hood 2 ', score: 0.7),
      LeaderboardItem(name: 'Hood 3 ', score: 0.38),
      LeaderboardItem(name: 'Hood 4 ', score: 0.8),
    ];

    leaderboardItems.sort((a, b) => b.score.compareTo(a.score));

    void closeMenu() {
      if (_isMenuOpen) {
        setState(() {
          _isMenuOpen = false;
          _controller.reverse();
        });
      }
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 40),
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
                        itemCount: imagePaths.length,
                        layout: SwiperLayout.DEFAULT,
                        autoplayDisableOnInteraction: true,
                        curve: Curves.linear,
                        viewportFraction: 0.58,
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
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.99,
                        height: MediaQuery.of(context).size.height * 0.156,
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
                    const SizedBox(height: 120),
                  ],
                ),
              ],
            ),
            if (_isMenuOpen)
              GestureDetector(
                onTap: _toggleMenu,
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            Positioned(
              bottom: -4,
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _animation.value * (3.14 / 180),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Vector.png"),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CircularMenu(
              toggleButtonSize: 150,
              toggleButtonColor: Colors.transparent,
              toggleButtonIconColor: Colors.transparent,
              radius: 140,
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
