import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isuchat/widget/newButton.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(0, 0, 255, 1),
              Color.fromRGBO(0, 93, 255, 1)
            ])),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Image.asset(
                      "/img/logo-high.png",
                      scale: 8,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text.rich(TextSpan(
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 25),
                      text: "Welcome to ",
                      children: [
                        TextSpan(
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            text: "IsuChat")
                      ])),
                  SizedBox(
                    height: 15,
                  ),
                  newButton(
                      ontap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      title: "Login")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
