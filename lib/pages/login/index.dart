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
              loginPage(),
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
          TextField(
            controller: controller.pageUrlConf,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.link),
              hintText: 'https://',
              labelText: '地址',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
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

  // login page
  Widget loginPage() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: controller.configData != null ? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Container(
                  child: InkWell(
                    onTap: controller.leftAP,
                    child: Icon(Icons.keyboard_double_arrow_left, size: 50,color: Colors.blue,),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/logo.png"),
              )
            ),
          ),
          SizedBox(height: 10,),
          Text(controller.configData!.title, style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),),
          SizedBox(height: 10,),
          _buildInputField(
            icon: Icons.person,
            hintText: '用户邮箱',
            controller: controller.emailController,
          ),
          const SizedBox(height: 16),
          _buildInputField(
            icon: Icons.lock,
            hintText: '登陆密码',
            controller: controller.passwordController,
            obscureText: true,
          ),
          const SizedBox(height: 32),
          InkWell(
            onTap: controller.login,
            child: _buildDisabledButton('继续'),
          ),
        ],
      ) : Container(),
    );
  }

  Widget _buildInputField({
    required IconData icon,
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.grey),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }

  Widget _buildDisabledButton(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.green.shade500,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}
