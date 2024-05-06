import 'package:app/pages/account/pages/account_view.dart';
import 'package:app/pages/settings/pages/settings_view.dart';
import 'package:flutter/material.dart';
import '../../following/pages/following_view.dart';
import '../../home/pages/home_view.dart';

class LayoutView extends StatefulWidget {
   LayoutView({super.key});


  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex=0;
  List<Widget> screens = [
    HomeView(),
    AccountView(),
    FollowingView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar:
        Container(
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                  onTap: (index) {
                    currentIndex = index;
                    setState(() {
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "Account"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard), label: "Dashboard"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.heat_pump_sharp), label: "Heart"),
                  ]),
            )));
  }
}
