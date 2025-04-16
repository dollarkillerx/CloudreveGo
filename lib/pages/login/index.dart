import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.pageTypeIdx,
            children: [
              initWebsite(),
            ],
          ),
        ),
      );
    });
  }

  // 绑定站点
  Widget initWebsite() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("绑定站点Cloudreve", style: TextStyle(fontSize: 30,color: Colors.blue, fontWeight: FontWeight.bold)),
          SizedBox(height: 20,),
          TDInput(
            leftLabel: '站点地址',
            controller: controller.pageUrlConf,
            backgroundColor: Colors.white,
            hintText: 'https://',
            onChanged: (text) {
            },
            onClearTap: () {
            },
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: controller.initConfig,
              child: Text("继续", style: TextStyle(color: Colors.white, fontSize: 20),))
        ],
      ),
    );
  }
}
