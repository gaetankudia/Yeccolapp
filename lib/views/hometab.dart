import 'package:flutter/material.dart';
import 'package:yeccolapp/utils/colors.dart'; 
import 'package:yeccolapp/views/hometabs/home.dart'; 
import 'package:yeccolapp/views/hometabs/notifications.dart'; 
import 'package:yeccolapp/views/hometabs/profile.dart';
import 'package:line_icons/line_icons.dart';

class HomePageTab extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageTab> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(), 
    NotificationsPage(), 
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final bottomNavBar = BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey.withOpacity(0.6),
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text(
            'Accueil',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(LineIcons.comments),
        //   title: Text(
        //     'Concours',
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
         BottomNavigationBarItem(
           icon: Icon(LineIcons.bell),
           title: Text(
             'Notifications',
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
         ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          title: Text(
            'Compte',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      body: _pages[_currentIndex],
    );
  }
}
