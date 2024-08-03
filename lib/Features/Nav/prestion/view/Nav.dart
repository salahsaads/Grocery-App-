import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/Home/prestion/view/HomeScreen.dart';
import 'package:grocery/Features/car/presetion/view/Car_Screen.dart';
import 'package:grocery/core/utils/constent.dart';

import '../../../Setting/prestion/view/Setting_screen.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int index = 0;
  List<Widget> Screen = [
    Homescreen(),
    Scaffold(backgroundColor: Colors.orange),
    CarScreen(),
    Scaffold(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 75,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  if (index != 0) {
                    setState(() {
                      index = 0;
                    });
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 35,
                      color: index == 0 ? maincolor : Colors.black,
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: index == 0 ? maincolor : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (index != 1) {
                    setState(() {
                      index = 1;
                    });
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 35,
                      color: index == 1 ? maincolor : Colors.black,
                    ),
                    Text(
                      'Wishlist',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: index == 1 ? maincolor : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (index != 2) {
                    setState(() {
                      index = 2;
                    });
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(33),
                          color: Colors.white),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff71dcff),
                        radius: 32,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: index == 2 ? maincolor : Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (index != 3) {
                    setState(() {
                      index = 3;
                    });
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 35,
                      color: index == 3 ? maincolor : Colors.black,
                    ),
                    Text(
                      'Search',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: index == 3 ? maincolor : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (index != 4) {
                    setState(() {
                      index = 4;
                    });
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      size: 35,
                      color: index == 4 ? maincolor : Colors.black,
                    ),
                    Text(
                      'Setting',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: index == 4 ? maincolor : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Screen[index],
    );
  }
}
