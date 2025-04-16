import 'package:cloudrevego/pages/login/provider.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
   var pageTypeIdx = 0;
   var pageUrlConf = TextEditingController();

   initConfig() {
      final text = pageUrlConf.text.trim();

      // 尝试解析 URL
      final uri = Uri.tryParse(text);

      if (!(uri != null && (uri.isScheme("http") || uri.isScheme("https")) && uri.host.isNotEmpty)) {
         Get.snackbar(
            "无效的链接",        // title
            "请输入合法的 http 或 https 链接", // message
            snackPosition: SnackPosition.TOP, // 可选：弹出位置
            duration: Duration(seconds: 2),   // 可选：显示时长
         );
         return;
      }

      dio.Response? resp = LoginProvider().initConfig(uri.toString());
      if (resp != null) {
         print(resp.statusCode);
         print(resp.data);
      }

   }
}
