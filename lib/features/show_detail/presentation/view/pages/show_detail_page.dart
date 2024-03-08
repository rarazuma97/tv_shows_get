import 'package:crow/crow.dart';
import 'package:tv_shows/base/router/app_routes.dart';
import 'package:tv_shows/features/show_detail/bindings/show_detail_screen_binding.dart';
import 'package:tv_shows/features/show_detail/presentation/view/screens/show_detail_screen.dart';

class ShowDetailPage extends Page<dynamic> {
  ShowDetailPage()
      : super(
          name: Routes.showDetail,
          page: ShowDetailScreen.new,
          binding: ShowDetailScreenBinding()
        );
}
