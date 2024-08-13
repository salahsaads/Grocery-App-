import 'package:flutter/material.dart';
import 'package:grocery/Features/Singin/presation/view/singin.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            LottieBuilder.asset(
              'assets/Animation - 1720295547361.json',
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Singin()));
              },
              Title: 'Start',
            ),
          ],
        ),
      ),
    );
  }
}
