import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flua/config/service_url.dart';

Future getHomePageContent() async {
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get("https://www.wanandroid.com/");
    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    print(e);
    return e;
  }
}
