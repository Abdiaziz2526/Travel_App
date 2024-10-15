import 'package:flutter/material.dart';
import 'package:travel_app/pages/NavPages/Bar_item_page.dart';
import 'package:travel_app/pages/NavPages/Search_page.dart';
import 'package:travel_app/pages/NavPages/my_page.dart';
import 'package:travel_app/pages/NavPages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List of pages to navigate
  List<Widget> pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    ProfilePage(),
  ];
  
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: pages[currentIndex], // Display the current page based on index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Set current index
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: onTap, // Set onTap to change the index
      ),
    );
  }
}
