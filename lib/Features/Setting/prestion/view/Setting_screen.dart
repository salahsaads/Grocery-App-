import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/core/utils/widget/Custom_TextFeild.dart';
import 'package:grocery/core/utils/widget/Custom_Button.dart';

import '../../../../core/utils/thema/style.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              App_theme(
                Title: 'Application Theme',
                doing: 'Dark Mood',
                subtite:
                    'Enable this setting if you’d like\nto continue to using app in dark mood',
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Color.fromARGB(255, 1, 88, 117),
                ),
              ),
              App_theme(
                Title: 'Application language',
                doing: 'English',
                subtite:
                    'Enable this setting if you’d like\nto continue to using app in English',
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Color.fromARGB(255, 1, 88, 117),
                ),
              ),
              ChangePassword(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Color.fromARGB(255, 1, 88, 117),
                ),
              ),
              Support(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Color.fromARGB(255, 1, 88, 117),
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomButton {}

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                'Support',
                style: GoogleFonts.abhayaLibre(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(255, 1, 88, 117))),
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
              Text(
                'Support',
                style: GoogleFonts.abhayaLibre(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
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
              Text(
                'Help',
                style: GoogleFonts.abhayaLibre(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),
        ),
      ],
    );
  }
}

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Change Password',
                style: GoogleFonts.abhayaLibre(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(255, 1, 88, 117))),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextFeild(Title: '', icon: (Icons.lock), password: true),
        ),
        Container(
          alignment: Alignment.center,
          // ignore: sort_child_properties_last
          child: Text('save', style: Style.ButtonTextStyle),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xff00C1FE)),
        ),
      ],
    );
  }
}

class App_theme extends StatelessWidget {
  App_theme(
      {super.key,
      required this.Title,
      required this.doing,
      required this.subtite});
  String Title;
  String doing;
  String subtite;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                Title,
                style: GoogleFonts.abhayaLibre(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(255, 1, 88, 117))),
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
              Text(
                doing,
                style: GoogleFonts.abhayaLibre(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Spacer(),
              Switch(
                // This bool value toggles the switch.
                value: false,
                activeColor: Color(0xff71dc),

                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                },
              )
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
              Text(
                subtite,
                style: GoogleFonts.aBeeZee(
                    fontSize: 13, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
