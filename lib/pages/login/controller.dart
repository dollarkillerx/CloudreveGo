import 'package:cloudrevego/common/library/local_storage.dart';
import 'package:cloudrevego/pages/login/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/config.dart';

class LoginController extends GetxController {
   var pageTypeIdx = 0;
   var pageUrlConf = TextEditingController();
   var emailController = TextEditingController();
   var passwordController = TextEditingController();

   ConfigData? configData;

   initConfig() async {
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

      try {
         ConfigModel? resp =  await LoginProvider().initConfig(uri.toString());
         if (resp != null) {
            if (resp.code == 0) {
               // Get.snackbar(
               //    "Success",        // title
               //    "配置成功", // message
               //    snackPosition: SnackPosition.TOP, // 可选：弹出位置
               //    duration: Duration(seconds: 2),   // 可选：显示时长
               // );
               LocalStorage.setConf(resp.data);

               var url = uri.toString();
               if (url.endsWith('/')) {
                  url = url.substring(0, url.length - 1);
               }
               LocalStorage.setUrl(url);
               pageTypeIdx = 1;
               configData = resp.data;
               update();
            }else {
               print(resp.toString());
            }
            
         }
      } catch (e) {
        print(e);
           Get.snackbar(
               "无效的链接",        // title
               "请输入合法的 http 或 https 链接", // message
               snackPosition: SnackPosition.TOP, // 可选：弹出位置
               duration: Duration(seconds: 2),   // 可选：显示时长
         );
      }
   }

   @override
  void onReady() {
    super.onReady();

    final conf = LocalStorage.getConf();
    if (conf != null) {
       pageTypeIdx = 1;
       configData = conf;
       update();
    }
  }

  void leftAP() {
    pageTypeIdx = 0;
    update();
  }

  void login() async {
      emailController.text = emailController.text.trim();
      passwordController.text = passwordController.text.trim();

      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
         Get.snackbar(
            "错误",        // title
            "请输入邮箱和密码", // message
            snackPosition: SnackPosition.TOP, // 可选：弹出位置
            duration: Duration(seconds: 2),   // 可选：显示时长
         );
         return;
      }

      await LoginProvider().login(emailController.text, passwordController.text);
  }
}
