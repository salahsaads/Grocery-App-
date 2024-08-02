import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/Home/prestion/view/widget/CustomAppBar.dart';
import 'package:grocery/Features/Home/prestion/view/widget/CustomImage.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/widget/CustomTextfieldSearch.dart';

import '../../../Custom_Prodect/presention/view/Custom_Prodect.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff71dcff),
              Color.fromARGB(255, 126, 205, 229),
              Color.fromARGB(255, 126, 205, 229),
              Colors.white,
              Colors.white,
              Color.fromARGB(255, 126, 205, 229),
              Color.fromARGB(255, 126, 205, 229),
              Color(0xff71dcff),
            ],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const CustomAppBar(),
                    const SizedBox(height: 15),
                    const CustomImage(),
                    const SizedBox(height: 30),
                    const CustomTextfieldSearch(),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          ' Category',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          ' See All',
                          style: GoogleFonts.poppins(
                            textStyle:
                                const TextStyle(fontSize: 16, color: maincolor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 2,
                childAspectRatio: 10 / 16,
                crossAxisCount:
                    (MediaQuery.of(context).size.width / 140).round(),
                mainAxisSpacing: 5,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Custom_Prodect()),
                      );
                    },
                    child: CustomItem(),
                  );
                },
                childCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/PngItem_1112827 1.png')),
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
          SizedBox(
            height: 10,
          ),
          Text(
            'Vegetables & \n Fruits',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
