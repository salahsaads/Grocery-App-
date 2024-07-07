
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.Image1,
  });
  final String Image1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(Image1),
      width: 65,
      height: 31,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 4),
        )
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
    );
  }
}
