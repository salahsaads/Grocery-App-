// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery/core/utils/thema/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.Title, required this.onTap});
  final String Title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        // ignore: sort_child_properties_last
        child: Text(Title, style: Style.ButtonTextStyle),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff00C1FE)),
      ),
    );
  }
}
