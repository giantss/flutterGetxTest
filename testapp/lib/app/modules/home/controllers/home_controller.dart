import 'package:get/get.dart';
import 'package:testapp/app/modules/home/providers/home_provider.dart';

import '../home_model.dart';

class HomeController extends GetxController {
  var homeProvider = HomeProvider();
  var homeData = Home().obs;
  final count = 0.obs;
  @override
  void onInit() {
    fetchHomeData();
    super.onInit();
  }

  void fetchHomeData() async {
    homeData.value = homeProvider.getHome(1) as Home;
  }


  void increment() => count.value++;
}
