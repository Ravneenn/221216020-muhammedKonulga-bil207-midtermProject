import 'package:flutter/material.dart';
import 'package:isuchat/widget/bottomMenu.dart';
import 'package:isuchat/widget/drawerNavigator.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Settings")),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  drawerNavigator(
                      ontap: () {},
                      name: "Change Theme",
                      icon: Icons.dark_mode),
                  Divider(),
                  drawerNavigator(
                      ontap: () {},
                      name: "Download My Data",
                      icon: Icons.download),
                  Divider(),
                  drawerNavigator(
                      ontap: () {}, name: "Feed Back", icon: Icons.feedback),
                  Divider(),
                  drawerNavigator(
                      ontap: () {}, name: "Report", icon: Icons.bug_report),
                  Divider(),
                ],
              ),
            ),
            bottomMenu()
          ],
        ),
      ),
    );
  }
}
