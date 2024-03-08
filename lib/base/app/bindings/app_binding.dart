import 'package:crow/crow.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tv_shows/base/app/presentation/app_view_model.dart';
import 'package:tv_shows/base/network/client_service.dart';

class AppBinding extends Binding {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => AppViewModel());
    await preferencesInit();
    _clientInit();
  }

  static Future<void> preferencesInit() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(preferences);

    FlutterSecureStorage storage = const FlutterSecureStorage();
    Get.put<FlutterSecureStorage>(storage);
  }

  static void _clientInit() {
    Get.put<ApiClient>(
      ApiClient(),
    );
  }
}
