import 'package:flua/Bean/MineBean.dart';
import 'package:flua/Widgets/Column_btn_list.dart';
import 'package:flutter/material.dart';

class CarPage extends StatefulWidget {
  @override
  CarPageState createState() => new CarPageState();
}

class CarPageState extends State<CarPage> {
  List<MineBean> mList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mList = List();
    mList.add(MineBean(
        "充币",
        Icon(
          Icons.radio,
          color: Colors.white,
        )));
    mList.add(MineBean(
        "提币",
        Icon(
          Icons.radio,
          color: Colors.white,
        )));
    mList.add(MineBean(
        "充值",
        Icon(
          Icons.radio,
          color: Colors.white,
        )));
    mList.add(MineBean(
        "提现",
        Icon(
          Icons.radio,
          color: Colors.white,
        )));
    mList.add(MineBean(
        "草拟吗",
        Icon(
          Icons.radio,
          color: Colors.white,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //宽度
        width: double.infinity,
        //高度
        height: double.infinity,
        // 盒子样式
        decoration: new BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/mine_back.png"), fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            headText(),
            account(),
            Expanded(flex: 1, child: tabList()),
          ],
        ),
      ),
    );
  }

  Widget headText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text(
                "我的余额(TTY)",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                child: Text(""),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Text(
                "收益记录",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: Text("30000", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }

  Widget account() {
    return Container(
      margin: EdgeInsets.all(10),
      // 盒子样式
      decoration: new BoxDecoration(
          //设置Border属性给容器添加边框
          border: new Border.all(
            //为边框添加颜色
            color: const Color(0xffF4E39F),
            //边框宽度
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Text(
                  "资金账户",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(""),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "1200.0010",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "≈￥1660020.123",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Container(
              //宽度
              width: double.infinity,
              height: 50,
              // 盒子样式
              decoration: new BoxDecoration(
                //设置Border属性给容器添加边框
                border: new Border(
                  top: BorderSide(
                    color: const Color(0xffF4E39F),
                    //边框宽度
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ColumnBtnList(mList[0]),
                  ),
                  Expanded(
                    child: ColumnBtnList(mList[1]),
                  ),
                  Expanded(
                    child: ColumnBtnList(mList[2]),
                  ),
                  Expanded(
                    child: ColumnBtnList(mList[3]),
                  ),
                  Expanded(
                    child: ColumnBtnList(mList[4]),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget tabList() {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: TabBar(
                indicatorColor: const Color(0xffAEA375),
                isScrollable: true,
                labelStyle: TextStyle(
                  color: const Color(0xffAEA375),
                ),
                labelColor: const Color(0xffAEA375),
                unselectedLabelColor: const Color(0xff787878),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "持币生息",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "升息记录",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: TabBarView(
                  children: <Widget>[
                    ListViewContnet(),
                    ListViewContnet(),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffF4E39F),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewContnet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        itemBottom(),
        itemBottom(),
        itemBottom(),
      ],
    );
  }

  Widget itemBottom() {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "时间",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "价格",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "币种",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
