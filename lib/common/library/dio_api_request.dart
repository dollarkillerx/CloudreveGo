import 'package:get/get.dart' as getf;
import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routers/app_routes.dart';

class ApiRequest {
  Dio _dio() {
    Dio dio = Dio(BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: "SERVER_API_URL",
      //连接服务器超时时间
      connectTimeout: Duration(seconds: 5),
      //响应流上前后两次接受到数据的间隔
      receiveTimeout: Duration(seconds: 5),
      //请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
      // contentType: Headers.formUrlEncodedContentType,
      //表示期望以那种格式(方式)接受响应数据。接受4种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      responseType: ResponseType.json,
    ));

    dio.interceptors.add(AuthInterceptor());

    return dio;
  }

  Future<Response?> get(
      {required String url, Map<String, dynamic>? variables}) async {
    Response resp = await _dio().get(
      url,
      queryParameters: variables,
    );
    if (resp.statusCode != 200) {
      throw '${resp.data}';
    }

    return resp;
  }

  Future<Response?> post(
      {required String url, Map<String, dynamic>? variables}) async {
    Response resp = await _dio().post(
      url,
      data: variables,
      options: Options(
        contentType: Headers.jsonContentType, // 明确指定为 JSON
      ),
    );
    if (resp.statusCode != 200) {
      throw '${resp.data}';
    }

    return resp;
  }
}

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var params = options.queryParameters = Map.from(options.queryParameters);
    // String? jwt = LocalStorage.getJWT();
    // String skey = "s" + "a" + "l" + "t";

    // if (params['Authorization'] == null) {
    //   options.headers["Authorization"] = jwt;
    //   print(jwt);
    //   options.headers[skey] = md5
    //       .convert(utf8.encode(
    //           '${DateTime.now().millisecondsSinceEpoch ~/ 10000}-9776e538-59ba-473f-8ccf-1d72031e360f1'))
    //       .toString();
    // }

    options.queryParameters = params;

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      // LocalStorage.delJWT();
      Get.toNamed(AppRoutes.Login);
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
