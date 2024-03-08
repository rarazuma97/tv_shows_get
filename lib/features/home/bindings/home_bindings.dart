import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tv_shows/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:tv_shows/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:tv_shows/features/home/data/home_repostory_impl.dart';
import 'package:tv_shows/features/home/domain/home_repository.dart';
import 'package:tv_shows/features/home/presentation/view_models/home_view_model.dart';


class HomeBinding extends Binding {
  @override
  void dependencies() {

    Get.lazyPut<HomeRemoteDataSource>(HomeRemoteDataSourceImpl.new);

    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(
        Get.find<HomeRemoteDataSource>()
      ),
    );

    Get.lazyPut(
      () => HomeViewModel(
          Get.find<HomeRepository>(),
          Get.find<SharedPreferences>(),
      )
    );
  }
}
