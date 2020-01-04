import 'dart:ui';

import 'package:flua/Bean/MineBean.dart';
import 'package:flua/Utils/ShowToast.dart';
import 'package:flua/Widgets/item_mine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  @override
  PersonPageState createState() => new PersonPageState();
}

class PersonPageState extends State<PersonPage> {
  List<MineBean> items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = new List<MineBean>();
    items.add(MineBean("个人资料", Icon(Icons.person, color: Colors.grey)));
    items.add(MineBean("个人资料", Icon(Icons.person, color: Colors.grey)));
    items.add(MineBean("公告", Icon(Icons.person, color: Colors.white)));
    items.add(MineBean("分享邀请", Icon(Icons.person, color: Colors.white)));
    items.add(MineBean("安全中心", Icon(Icons.person, color: Colors.white)));
    items.add(MineBean("收款方式", Icon(Icons.person, color: Colors.white)));
    items.add(MineBean("实名认证", Icon(Icons.person, color: Colors.white)));
    items.add(MineBean("客服/联系我们", Icon(Icons.person, color: Colors.white)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/mine_back.png"), fit: BoxFit.fill),
          ),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return mineHead();
              } else {
                return GestureDetector(
                  child: itemMine(items[index]),
                  onTap: () {
                    switch (items[index].title) {
                      case "个人资料":
                       Toasty.center("个人资料");
                        break;
                      case "公告":
                        Toasty.normal("公告");
                        break;
                      case "分享邀请":
                        Toasty.normal("分享邀请");
                        break;
                      case "安全中心":
                        Toasty.normal("安全中心");
                        break;
                      case "收款方式":
                        Toasty.normal("公收款方式告");
                        break;
                      case "实名认证":
                        Toasty.normal("实名认证");
                        break;
                      case "客服/联系我们":
                        Toasty.normal("客服/联系我们");
                        break;
                    }
                  },
                );
              }
            },
          )),
    );
  }

  //弹个吐司

  //头布局
  Widget mineHead() {
    return Stack(
      alignment: const FractionalOffset(0.5, 0.5), //方法一
      children: <Widget>[
        Image.asset(
          "images/person_back.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            Container(
              //宽度
              width: 109,
              //高度
              height: 109,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575268157970&di=7a6d54244a59e12a697a171783667ef2&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F2e06c9010b0cee426b0492918e5830548055bc21.jpg"),
                radius: 100.0,
              ),
            ),
            Container(
              //高度
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "姓名",
                style: TextStyle(color: Colors.white, fontSize: 15.36),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
