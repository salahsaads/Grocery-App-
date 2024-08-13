import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/constent.dart';

class CustomTextfieldSearch extends StatelessWidget {
   CustomTextfieldSearch({
    super.key,
    required this.textEditingController
  });
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: 'Search any Product..',
            hintStyle: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: maincolor,
                fontSize: 18,
              ),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: maincolor,
            ),
            suffixIcon: const Icon(
              Icons.mic,
              color: maincolor,
            ),
            fillColor: Colors.white,
            filled: true,
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
