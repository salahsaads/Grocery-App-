import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/constent.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.Image,
    required this.name,
    required this.Price,
  });

  final String Image;
  final String name;
  final String Price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(Image)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: maincolor),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Price,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
