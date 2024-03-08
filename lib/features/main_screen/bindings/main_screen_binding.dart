import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:tv_shows/features/home/bindings/home_bindings.dart';
import 'package:tv_shows/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:tv_shows/features/settings/presentation/view_models/settings_view_model.dart';

class MainScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MainScreenViewModel(),
    );

    Get.lazyPut(
      () => SettingsScreenViewModel(),
    );

    HomeBinding().dependencies();

   
  }
}
