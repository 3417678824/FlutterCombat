import 'package:flua/Bean/MineBean.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnBtnList extends StatelessWidget {
  MineBean _mineBean;

  ColumnBtnList(this._mineBean);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Column(
        children: [
          _mineBean.iconTc,
          Text(
            _mineBean.title,
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}
