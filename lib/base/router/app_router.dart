import 'package:crow/crow.dart';
import 'package:tv_shows/base/router/app_routes.dart';
import 'package:tv_shows/features/home/presentation/view/pages/home_page.dart';
import 'package:tv_shows/features/main_screen/presentation/view/pages/main_page.dart';
import 'package:tv_shows/features/show_detail/presentation/view/pages/show_detail_page.dart';


abstract class AppRouter {
  static const String initial = Routes.mainPage;

  static List<Page<dynamic>> get pages => _getPages();

  static List<Page<dynamic>> _getPages() {
    return <Page<dynamic>>[
      MainPage(),
      HomePage(),
      ShowDetailPage()
    ];
  }
}
