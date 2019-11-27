import 'package:dio/dio.dart';
import 'package:flua/Widgets/swipe_banner.dart';
import 'package:flua/service/service_method.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

String s;

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    getHomePageContent().then((val) {
      s = val.toString();
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Text("sd"),
      ),
    );
  }
}
