
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/constent.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/Frame 427320667.png'))),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tomato',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '1 Kg',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '₹49',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 20,
                      child: Text(
                        'add',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: maincolor,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
