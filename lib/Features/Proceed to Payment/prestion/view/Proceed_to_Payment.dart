import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';

import '../../../prodect_details/presation/view/prodect_details.dart';

class ProceedToPayment extends StatefulWidget {
  const ProceedToPayment({super.key});

  @override
  State<ProceedToPayment> createState() => _ProceedToPaymentState();
}

class _ProceedToPaymentState extends State<ProceedToPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                color: Color(0xffEDF2F7),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Kumbakonam'),
                      Spacer(),
                      Text(
                        'Edit',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    color: Color(0xff4A5568),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Call when you arrive'),
                  Spacer(),
                  Checkbox(
                      activeColor: Colors.grey, value: false, onChanged: (v) {})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.door_back_door_outlined,
                    color: Color(0xff4A5568),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Leave at the door'),
                  Spacer(),
                  Checkbox(
                      activeColor: Colors.grey, value: true, onChanged: (v) {})
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Payment method',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xffEDF2F7),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    children: [
                      Image.asset('assets/visa 1.png'),
                      Spacer(),
                      Text('*******7588'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Order summary',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            'Order no:',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color(0xff4A5568),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '#19',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '2 * 65 masala,50g',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color(0xff4A5568),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              '₹38',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1 *  Tamil Milk,500ml',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color(0xff4A5568),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              '₹49',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1 *  Tamil Milk,500ml',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color(0xff4A5568),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              '₹49',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1 *  Tamil Milk,500ml',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color(0xff4A5568),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              '₹49',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Payment method',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              'ippo pay',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                            Spacer(),
                            Text(
                              '₹754',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Total ',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17)),
                            ),
                            //
                            Text(
                              'incl. VAT ',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ),
                            Spacer(),
                            Text(
                              '₹754',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(Title: 'Proceed to Payment', onTap: () {}),
            )
          ],
        ),
      ),
    ));
  }
}
