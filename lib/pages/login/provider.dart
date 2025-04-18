import 'dart:convert';

import 'package:cloudrevego/models/user.dart';

import '../../common/library/dio_api_request.dart';
import 'package:dio/dio.dart';

import '../../common/library/local_storage.dart';
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
    ConfigModel conf = ConfigModelMapper.fromJson(jsonEncode(resp.data));
    return conf;
  }

  login(String email, String password) async {
    var url = '${LocalStorage.getUrl()!}/api/v3/user/session';

    Response resp = await post(
      url: url,
      variables: {
        "userName": email,
        "Password": password,
        "captchaCode": ""
      },
    );

    UserModel user = UserModelMapper.fromJson(jsonEncode(resp.data));
    // set user
    LocalStorage.setUserInfo(user.data);
    var cookie = extractCookieHeader(resp.headers.value("set-cookie")!);
    // set cookie
    LocalStorage.setJWT(cookie);
    print(cookie);

    await directory("");

    return user.data;
  }

  String extractCookieHeader(String rawHeader) {
    // 截取第一个 `;` 之前的内容
    int index = rawHeader.indexOf(';');
    if (index != -1) {
      return rawHeader.substring(0, index);
    }
    return rawHeader;
  }

  directory(String path) async {
    var url = '${LocalStorage.getUrl()!}/api/v3/directory$path';
    Response resp = await get(
      url: url,
    );
    print(resp.data);
  }
}


