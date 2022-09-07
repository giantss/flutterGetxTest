import 'package:get/get.dart';

import '../home_model.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Home.fromJson(map);
      if (map is List) return map.map((item) => Home.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';
  }

  Future<Home?> getHome(int id) async {
    final response = await get('albums/$id');
    return response.body;
  }

  Future<Response<Home>> postHome(Home home) async => await post('home', home);
  Future<Response> deleteHome(int id) async => await delete('home/$id');
}
