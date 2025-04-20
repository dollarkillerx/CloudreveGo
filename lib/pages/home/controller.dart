import 'package:cloudrevego/pages/home/provider.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  var pageIdx = 0;

  void changePage(int index) {
    pageIdx = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
    initData();
  }

  initData() async {
    await HomeProvider().directory("");
  }
}
