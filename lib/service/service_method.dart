import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flua/config/service_url.dart';

Future getHomePageContent() async {
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    response = await dio.post(servicePath["homePageContent"], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("接口出错");
    }
  } catch (e) {
    print(e);
    return e;
  }
}
