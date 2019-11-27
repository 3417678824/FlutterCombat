import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flua/config/service_url.dart';

Future getHomePageContent() async {
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.post(servicePath["homePageContent"]);
    if (response.statusCode == 200) {
      print(response.data);
      return response.data;
    } else {
      throw Exception("接口出错");
    }
  } catch (e) {
    print(e);
    return e;
  }
}
