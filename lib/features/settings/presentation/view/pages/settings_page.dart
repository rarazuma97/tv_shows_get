import 'package:crow/crow.dart';
import 'package:tv_shows/base/router/app_routes.dart';
import 'package:tv_shows/features/settings/bindings/settings_screen_binding.dart';
import 'package:tv_shows/features/settings/presentation/view/screens/settings_screen.dart';

class SettingsPage extends Page<dynamic> {
  SettingsPage()
      : super(
          name: Routes.settings,
          page: SettingsScreen.new,
          binding: SettingsScreenBinding()
        );
}
