import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/Nav/prestion/view/Nav.dart';
import 'package:grocery/Features/Singin/cubit/login_cubit.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';
import 'package:grocery/core/utils/widget/Custom_TextFeild.dart';
import 'package:grocery/core/utils/widget/loginor.dart';

class Singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController UserName = TextEditingController();
    TextEditingController password = TextEditingController();

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          final Cu = BlocProvider.of<LoginCubit>(context);

          if (state is LoginLoading) {
            print('============loading');
          } else if (state is LoginLoaded) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text(Cu.result)),
            // );
            print('============Loaded');

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Nav()),
            );
          } else if (state is LoginError) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text(state.message)),
            // );
            print('============Error');
          }
        },
        builder: (context, state) {
          final Cu = BlocProvider.of<LoginCubit>(context);

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
                    CustomTextFeild(
                      textEditingController: UserName,
                      Title: 'Username',
                      icon: Icons.person,
                      password: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFeild(
                      textEditingController: password,
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
                              textStyle: const TextStyle(
                                  color: maincolor, fontSize: 18)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        Title: state == LoginLoading ? 'Loading...' : 'Login',
                        onTap: () {
                          Cu.SingInCubit(
                              username: UserName.text.trim(),
                              password: password.text.trim());

                          
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
                              textStyle: const TextStyle(
                                  color: maincolor, fontSize: 18)),
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
        },
      ),
    );
  }
}
