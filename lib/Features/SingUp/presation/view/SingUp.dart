import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/SingUp/Cubit/cubit/singup_cubit.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';
import 'package:grocery/core/utils/widget/Custom_TextFeild.dart';
import 'package:grocery/core/utils/widget/loginor.dart';
import '../../../Nav/prestion/view/Nav.dart';

class Singup extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password1 = TextEditingController();
  final TextEditingController password2 = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingupCubit(),
      child: BlocConsumer<SingupCubit, SingupState>(
        listener: (context, state) {
          final Cu = BlocProvider.of<SingupCubit>(context);

          if (state is SingupLoading) {
            print('============loading');
          } else if (state is SingupLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(Cu.result!)),
            );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Nav()),
            );
          } else if (state is SingupError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final Cu = BlocProvider.of<SingupCubit>(context);
          return Scaffold(
            backgroundColor: background,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    const Row(
                      children: [
                        Text(
                          'Create\nan account',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: maincolor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    CustomTextFeild(
                      textEditingController: username,
                      Title: 'Username',
                      icon: Icons.person,
                      password: false,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFeild(
                      textEditingController: email,
                      Title: 'Email',
                      icon: Icons.email,
                      password: false,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFeild(
                      textEditingController: phone,
                      Title: 'Phone Number',
                      icon: Icons.phone,
                      password: false,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFeild(
                      textEditingController: password1,
                      Title: 'Password',
                      icon: Icons.lock,
                      password: true,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFeild(
                      textEditingController: password2,
                      Title: 'Confirm Password',
                      icon: Icons.lock,
                      password: true,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFeild(
                      textEditingController: address,
                      Title: 'Address',
                      icon: Icons.location_city,
                      password: false,
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      Title: state is SingupLoading
                          ? 'Loading...'
                          : 'Create Account',
                      onTap: () {
                        Cu.SingUpCubit(
                          email: email.text.trim(),
                          username: username.text.trim(),
                          phone: phone.text.trim(),
                          password: password1.text.trim(),
                          password2: password2.text.trim(),
                          address: address.text.trim(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: maincolor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Or Login with',
                          style: GoogleFonts.urbanist(
                            textStyle: const TextStyle(
                              color: maincolor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: maincolor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const LoginOr(),
                    const SizedBox(height: 80),
                    Row(
                      children: [
                        Text(
                          'I Already Have an Account',
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: 18,
                              shadows: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 4),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'Singin');
                          },
                          child: Text(
                            'Login',
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
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
