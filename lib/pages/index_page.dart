import 'package:flua/pages/car_pages.dart';
import 'package:flua/pages/home_page.dart';
import 'package:flua/pages/person_page.dart';
import 'package:flua/pages/search_page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  IndexPageState createState() => new IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  List<BottomNavigationBarItem> mBottom = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text("分类"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text("购物车"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_pin),
      title: Text("我的"),
    )
  ];

  List mPages = [
    HomePage(),
    SearchPage(),
    CarPage(),
    PersonPage(),
  ];

  int currentPage = 0;
  var currentWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 255, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: mBottom,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
            currentWidget = mPages[index];
          });
        },
      ),
      body: currentWidget,
    );
  }
}
