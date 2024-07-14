import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/widget/CustomContainer.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';
import 'package:grocery/core/utils/widget/Custom_TextFeild.dart';
import 'package:grocery/core/utils/widget/loginor.dart';

class Singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Row(
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'Welcome\nBack!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: maincolor),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextFeild(
                Title: 'Username or Email',
                icon: Icons.person,
                password: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFeild(
                Title: 'Password',
                icon: Icons.lock,
                password: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(color: maincolor, fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  Title: 'Login',
                  onTap: () {
                    Navigator.pushNamed(context, 'Homescreen');
                  }),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: maincolor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Or Login with',
                    style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(color: maincolor, fontSize: 18)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginOr(),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    'Don\’t have an account?',
                    style: GoogleFonts.urbanist(
                        textStyle: TextStyle(fontSize: 18, shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      )
                    ])),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Singup');
                    },
                    child: Text(
                      'Register Now',
                      style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: maincolor,
                              fontSize: 18,
                              shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            )
                          ])),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
