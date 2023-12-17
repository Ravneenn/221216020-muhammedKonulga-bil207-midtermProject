import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isuchat/widget/newButton.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Center(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromRGBO(0, 0, 255, 1),
                    Color.fromRGBO(0, 93, 255, 1)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: newButton(
                                ontap: () {
                                  if (Navigator.canPop(context)) {
                                    Navigator.pop(context);
                                  }
                                  ;
                                },
                                title: "Go Back"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image.asset(
                        "assets/img/logo-high-text.png",
                        scale: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Column(
                          children: [
                            textInput("StudentID", "Enter your student ID"),
                            SizedBox(
                              height: 15,
                            ),
                            textInput("Password", "Enter your OIS password"),
                            SizedBox(
                              height: 15,
                            ),
                            newButton(
                                ontap: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                },
                                title: "Login")
                          ],
                        ),
                      )
                    ],
                  ))),
        ),
      ),
    );
  }

  Container textInput(String title, String hint) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(22)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(0, 0, 255, 1),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hint),
            ),
          ],
        ),
      ),
    );
  }
}
