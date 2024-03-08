import 'package:crow/crow.dart';
import 'package:tv_shows/base/router/app_routes.dart';
import 'package:tv_shows/features/home/bindings/home_bindings.dart';
import 'package:tv_shows/features/home/presentation/view/screens/home_screen.dart';

class HomePage extends Page<dynamic> {
  HomePage()
      : super(
          name: Routes.home,
          page: HomeScreen.new,
          binding: HomeBinding(),
        );
}
