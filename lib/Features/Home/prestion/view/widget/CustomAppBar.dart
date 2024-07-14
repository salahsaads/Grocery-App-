
import 'package:flutter/material.dart';
import 'package:grocery/core/utils/constent.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset:
                  const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5)),
      child:const  Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Icon(
              Icons.menu,
              size: 35,
              color: maincolor,
            ),
            Spacer(),
            Icon(Icons.add_shopping_cart),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.notifications)
          ],
        ),
      ),
    );
  }
}
