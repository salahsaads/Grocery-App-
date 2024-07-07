import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/constent.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.Title,
      required this.icon,
      required this.password});
  final String Title;
  final IconData icon;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
            hintText: Title,
            hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              color: hintTextColor,
              fontSize: 18,
            )),
            suffixIcon: password
                ? const Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.visibility_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                  )
                : null,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 40,
                color: maincolor,
              ),
            ),
            filled: true,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xfff3f3f3)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xfff3f3f3)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            fillColor: const Color(0xfff3f3f3),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xfff3f3f3)),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
