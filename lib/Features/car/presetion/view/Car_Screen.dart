import 'package:flutter/material.dart';
import 'package:grocery/Features/Custom_Prodect/presention/view/Custom_Prodect.dart';
import 'package:grocery/Features/car/presetion/view/widget/Item.dart';
import 'package:grocery/Features/prodect_details/presation/view/prodect_details.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';
import 'package:grocery/core/utils/widget/Custom_TextFeild.dart';

import '../../../Custom_Prodect/presention/veiw_model/widget/CustomItem.dart';
import '../../../Proceed to Payment/prestion/view/Proceed_to_Payment.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.only(top: 5),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        childAspectRatio: 10 / 14,
                        crossAxisCount:
                            (MediaQuery.of(context).size.width / 140).round(),
                        mainAxisSpacing: 5),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Custom_Prodect()));
                          },
                          child: Item());
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                  Title: 'Buying',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProceedToPayment()));
                  }),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
