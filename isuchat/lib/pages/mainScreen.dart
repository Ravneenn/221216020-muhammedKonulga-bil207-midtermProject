import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isuchat/widget/bigTitle.dart';
import 'package:isuchat/widget/bottomMenu.dart';
import 'package:isuchat/widget/newChat.dart';
import 'package:isuchat/widget/quickChat.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/profile', (route) => false);
                            },
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://pbs.twimg.com/profile_images/1684652912155275264/E6icpMUU_400x400.jpg"),
                                  radius: 25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              welcomeMessage("asdfasdfads"),
                              Text(
                                "Muhammed Konulga",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                Icons.search,
                                color: Color.fromRGBO(0, 0, 255, 1),
                                size: 35,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                Icons.add,
                                color: Color.fromRGBO(0, 0, 255, 1),
                                size: 35,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: bigTitle(
                                      title: "Quick Chat", color: Colors.white),
                                ),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          quickChat(
                                              profile:
                                                  "https://scontent.fist2-4.fna.fbcdn.net/v/t1.18169-9/14358874_913960122081620_7934663394283454209_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=be3454&_nc_ohc=yxz1-Em_YQUAX-CAFQW&_nc_ht=scontent.fist2-4.fna&oh=00_AfC1QR-yNjmdaXmFOff9Ru-ddB5T-v5NxqUZdsCrBpZ12A&oe=65A66668",
                                              name: "Tarık"),
                                          quickChat(
                                              profile:
                                                  "https://scontent.fist2-4.fna.fbcdn.net/v/t1.6435-9/169895324_103106851909376_5583612644995622796_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=7a1959&_nc_ohc=wnBvQLu5264AX_83vW5&_nc_ht=scontent.fist2-4.fna&oh=00_AfAzHJ3cMPTyE1yKR4m0JLupsKtksNlurbViYS6nURF4Zg&oe=65A65A92",
                                              name: "Nida"),
                                          quickChat(
                                              profile:
                                                  "https://miro.medium.com/v2/resize:fit:1400/1*4f3S6SiIUdtWm96YjOdA-A.jpeg",
                                              name: "Deniz"),
                                          quickChat(
                                              profile:
                                                  "https://scontent.fist2-3.fna.fbcdn.net/v/t39.30808-6/311832617_5908625562501586_288578217520791691_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=-c7ACz9h3JAAX8xQ0C-&_nc_ht=scontent.fist2-3.fna&oh=00_AfA5E4LyyDWwcizLpdfs14zOmYv9pE7PTKIEk8WHpUSdqA&oe=658489FF",
                                              name: "Halis"),
                                          quickChat(
                                              profile:
                                                  "https://pbs.twimg.com/profile_images/1249973672514932736/VcIHSOwq_400x400.jpg",
                                              name: "Keyvan"),
                                          quickChat(
                                              profile:
                                                  "https://media.licdn.com/dms/image/C4D03AQH-cPZPxRISPQ/profile-displayphoto-shrink_200_200/0/1572341224839?e=2147483647&v=beta&t=O1N0uqNT9vNobY213UvDR2hH4HA8mDivSnbBlTpgOhg",
                                              name: "Ahmet Selim"),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          bigTitle(
                                              title: "Chat",
                                              color: Colors.black),
                                          Text(
                                            "Manage",
                                            style: GoogleFonts.montserrat(),
                                          )
                                        ],
                                      ),
                                    ),
                                    newChat(
                                        profile:
                                            "https://scontent.fist2-4.fna.fbcdn.net/v/t1.6435-9/169895324_103106851909376_5583612644995622796_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=7a1959&_nc_ohc=wnBvQLu5264AX_83vW5&_nc_ht=scontent.fist2-4.fna&oh=00_AfBkNxwKeron9IPcEQF-dIIcI_jPn62yjFjd1ljIaDneag&oe=65A692D2",
                                        name: "Nida",
                                        department: "CAAD",
                                        lastSeen: "Today, 12:30",
                                        role: "Student"),
                                    newChat(
                                        profile:
                                            "https://scontent.fist2-4.fna.fbcdn.net/v/t1.18169-9/14358874_913960122081620_7934663394283454209_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=be3454&_nc_ohc=yxz1-Em_YQUAX-CAFQW&_nc_ht=scontent.fist2-4.fna&oh=00_AfC1QR-yNjmdaXmFOff9Ru-ddB5T-v5NxqUZdsCrBpZ12A&oe=65A66668",
                                        name: "Tarik",
                                        department: "Computer Programming(2nd)",
                                        lastSeen: "Today, 15:40",
                                        role: "Student"),
                                    newChat(
                                        profile:
                                            "https://pbs.twimg.com/profile_images/1249973672514932736/VcIHSOwq_400x400.jpg",
                                        name: "Keyvan",
                                        department: "Computer Programming",
                                        lastSeen: "Online",
                                        role: "Professor"),
                                    newChat(
                                        profile:
                                            "https://miro.medium.com/v2/resize:fit:1400/1*4f3S6SiIUdtWm96YjOdA-A.jpeg",
                                        name: "Deniz",
                                        department: "Computer Programming",
                                        lastSeen: "Yesterday, 23:45",
                                        role: "Student"),
                                    newChat(
                                        profile:
                                            "https://scontent.fist2-3.fna.fbcdn.net/v/t39.30808-6/311832617_5908625562501586_288578217520791691_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=-c7ACz9h3JAAX8xQ0C-&_nc_ht=scontent.fist2-3.fna&oh=00_AfA5E4LyyDWwcizLpdfs14zOmYv9pE7PTKIEk8WHpUSdqA&oe=658489FF",
                                        name: "Halis",
                                        department: "Computer Programming",
                                        lastSeen: "Online",
                                        role: "Student"),
                                    newChat(
                                        profile:
                                            "https://media.licdn.com/dms/image/C4D03AQH-cPZPxRISPQ/profile-displayphoto-shrink_200_200/0/1572341224839?e=2147483647&v=beta&t=O1N0uqNT9vNobY213UvDR2hH4HA8mDivSnbBlTpgOhg",
                                        name: "Ahmet Selim",
                                        department: "Computer Programming",
                                        lastSeen: "Online",
                                        role: "Professor"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                bottomMenu()
              ],
            ),
          )),
        ),
      ),
    );
  }

  Text welcomeMessage(String area) {
    switch (area) {
      case 'Morning':
        return Text(
          "Good morning!",
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
        );
      case 'Afternoon':
        return Text(
          "Good afternoon!",
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
        );
      case 'Evening':
        return Text(
          "Good evening!",
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
        );
      case 'Night':
        return Text(
          "Good Night!",
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
        );
      default:
        return Text(
          "Welcome!",
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
        );
    }
  }
}
