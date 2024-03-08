import 'package:crow/crow.dart';
import 'package:tv_shows/base/router/app_routes.dart';
import 'package:tv_shows/features/home/bindings/home_bindings.dart';
import 'package:tv_shows/features/main_screen/bindings/main_screen_binding.dart';
import 'package:tv_shows/features/main_screen/presentation/view/screens/main_screen.dart';
import 'package:tv_shows/features/settings/bindings/settings_screen_binding.dart';

class MainPage extends Page<dynamic> {
  MainPage()
      : super(
          name: Routes.mainPage,
          page: MainScreen.new,
          bindings: [
            MainScreenBinding(),
            HomeBinding(),
            SettingsScreenBinding()
          ],
        );
}
