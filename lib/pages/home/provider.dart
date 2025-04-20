import '../../common/library/dio_api_request.dart';
import '../../common/library/local_storage.dart';
import 'package:dio/dio.dart';

class HomeProvider extends ApiRequest {
  directory(String path) async {
    var url = '${LocalStorage.getUrl()!}/api/v3/directory$path';
    Response resp = await get(
      url: url,
    );
    print(resp.data);
  }
}


