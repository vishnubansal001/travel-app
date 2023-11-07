import 'package:demoproject/pages/navpages/bar_item_page.dart';
import 'package:demoproject/pages/home_page.dart';
import 'package:demoproject/pages/navpages/my_page.dart';
import 'package:demoproject/pages/navpages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  void onTap(int index){
    setState(() {
      curr = index;
    });
  }
  int curr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[curr],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black54,
        unselectedItemColor:Colors.grey.withOpacity(0.5),
        showUnselectedLabels:false ,
        showSelectedLabels: false,
        elevation: 0,
        currentIndex: curr,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
