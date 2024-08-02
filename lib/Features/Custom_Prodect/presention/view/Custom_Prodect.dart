import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/Custom_Prodect/presention/veiw_model/widget/CustomItem.dart';
import 'package:grocery/Features/prodect_details/presation/view/prodect_details.dart';

import 'package:grocery/core/utils/widget/CustomTextfieldSearch.dart';

class Custom_Prodect extends StatelessWidget {
  const Custom_Prodect({super.key});

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const CustomTextfieldSearch(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      ' All Featured',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ' Sort ',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Icon(Icons.swap_vert)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ' Filter ',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Icon(Icons.filter_list_alt)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 5),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 10 / 16,
                      crossAxisSpacing: 10,
                      crossAxisCount:
                          (MediaQuery.of(context).size.width / 140).round(),
                    ),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProdectDetails()));
                          },
                          child: const CustomItem());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
