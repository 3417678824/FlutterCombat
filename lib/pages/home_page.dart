import 'package:flua/Bean/MineBean.dart';
import 'package:flua/Widgets/Column_btn_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  List<MineBean> mList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mList = List();
    mList.add(MineBean("充币", Icon(Icons.radio)));
    mList.add(MineBean("提币", Icon(Icons.radio)));
    mList.add(MineBean("充值", Icon(Icons.radio)));
    mList.add(MineBean("提现", Icon(Icons.radio)));
    mList.add(MineBean("草拟吗", Icon(Icons.radio)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.red,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "持币生息",
                      style: TextStyle(
                        color: const Color(0xff787878),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "升息记录",
                      style: TextStyle(
                        color: const Color(0xff787878),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                children: <Widget>[
                  Text("ss"),
                  Text("ss"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


