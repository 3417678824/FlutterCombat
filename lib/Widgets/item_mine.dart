import 'package:flua/Bean/MineBean.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class itemMine extends StatelessWidget {
  MineBean mineBean;

  itemMine(this.mineBean);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      //宽度
      width: 354,
      //高度
      height: 52,
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
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: mineBean.iconTc,
          ),
          Expanded(
            flex: 4,
            child: Text(
              mineBean.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
