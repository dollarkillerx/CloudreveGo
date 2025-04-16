import '../../common/library/dio_api_request.dart';
import 'package:dio/dio.dart';

import '../../models/config.dart';

class LoginProvider extends ApiRequest {
  initConfig(String url) async {
    // 去除末尾的斜杠（如果有）
    if (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }

    // 拼接路径
    url = '$url/api/v3/site/config';

    Response resp =  await get(url: url);
    ConfigModel jwt = ConfigModel.fromJson(resp.data);
    return jwt;
  }
}


