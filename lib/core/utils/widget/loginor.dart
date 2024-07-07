
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:grocery/core/utils/widget/CustomContainer.dart';

class LoginOr extends StatelessWidget {
  const LoginOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomContainer(
            Image1: 'assets/Vector.png',
          ),
          CustomContainer(
            Image1: 'assets/apple 1.png',
          ),
          CustomContainer(
            Image1: 'assets/Group 123.png',
          ),
          CustomContainer(
            Image1: 'assets/TwitterX.png',
          ),
        ],
      ),
    );
  }
}
