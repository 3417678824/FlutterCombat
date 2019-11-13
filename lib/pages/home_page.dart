import 'package:dio/dio.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
          // 盒子样式
          decoration: new BoxDecoration(
              color: Colors.yellow,
              //设置Border属性给容器添加边框
              border: new Border.all(
                  //为边框添加颜色
                  color: Colors.yellow,
              ),
          ),
          child: Text("cnmd"),
      ),
    );
  }

}
