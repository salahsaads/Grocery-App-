// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/Custom_Prodect/data/similer.dart';
import 'package:grocery/Features/prodect_details/presation/view/widget/customItem.dart';
import 'package:grocery/core/utils/constent.dart';

class ProdectDetails extends StatefulWidget {
  ProdectDetails({super.key, required this.onedata});
  Map<String, dynamic> onedata = {};

  @override
  State<ProdectDetails> createState() => _ProdectDetailsState();
}

class _ProdectDetailsState extends State<ProdectDetails> {
  List<List<String>> prodect = [
    ['Rasam Powde', ' ₹19/ 50g', 'assets/image 6 (1).png'],
    ['65 Masala', ' ₹19/ 50g', 'assets/image 5.png'],
    ['Pepper Powder', ' ₹19/ 50g', 'assets/image 6.png']
  ];
  double w = 0;
  double x = 0;

  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        w = (MediaQuery.of(context).size.height * .6);
        x = 30; // Set the target width for the animation
      });
    });
  }

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
                Color.fromARGB(255, 126, 205, 229),
                Color.fromARGB(255, 126, 205, 229),
                Color(0xff71dcff),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Custom_arrow_back()),
                SizedBox(
                  height: x,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: AnimatedContainer(
                    child: Image.network(widget.onedata['imgUrl']),
                    width: double.infinity,
                    height: w,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubicEmphasized,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.onedata['name'],
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '₹${widget.onedata['price']} / ${widget.onedata['weight']}',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const SizedBox(
                                width: 135,
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bookmark_outline,
                            size: 30,
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 126, 205, 229),
                              radius: 15.5,
                              child: Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            Text(
                              '1',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            CircleAvatar(
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 126, 205, 229),
                              radius: 15.5,
                            ),
                          ],
                        ),
                        width: 104,
                        height: 54,
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
                            color: maincolor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Spacer(),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add to cart',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: maincolor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                '₹${widget.onedata['price']}',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.sizeOf(context).width - 150,
                        height: 54,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product description',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Similar products',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .3,
                  child: StreamBuilder(
                    stream: getSimilarProducts(widget.onedata['id']),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error: ${snapshot.error}'),
                        );
                      } else if (!snapshot.hasData ||
                          (snapshot.data as List).isEmpty) {
                        return const Center(
                          child: Text('No similar products found'),
                        );
                      } else {
                        // Assuming the stream returns a List of products
                        final List<dynamic> products =
                            snapshot.data as List<dynamic>;

                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            // Assuming each product is a map or similar structure
                            final product = products[index];
                            return Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: CustomItem(
                                name: product[
                                    'name'], // Adjust the key names based on your data structure
                                Price: '${product['price']}',
                                Image: product['imgUrl'],
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class Custom_arrow_back extends StatelessWidget {
  const Custom_arrow_back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: maincolor,
            ),
            width: 41,
            height: 41,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
