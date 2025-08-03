import 'package:flutter/material.dart';
import 'package:instagram_01/home_screen.dart';
import 'package:instagram_01/post_screen.dart';
import 'package:instagram_01/profile_screen.dart';
import 'package:instagram_01/search_screen.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _selectedBottomNavigationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedLabelStyle: TextStyle(fontFamily: 'GB'),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(39, 43, 64, 1),
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_active_home.png'),
            label: 'Home',

            icon: Image.asset('images/icon_home.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_search_navigation_active.png'),
            label: 'Search',
            icon: Image.asset('images/icon_search_navigation.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_add_navigation_active.png'),
            label: 'Add',
            icon: Image.asset('images/icon_add_navigation.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'images/icon_activity_navigation_active.png',
            ),
            label: 'Profile',
            icon: Image.asset('images/icon_activity_navigation.png'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      Home_Screen(),
      Search_Screen(),
      Post_Screen(),
      UserProfileScreen(),
    ];
  }
}
