  
import 'package:tv_shows/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:tv_shows/features/home/domain/entity/show_response_entity.dart';
import 'package:tv_shows/features/home/domain/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;

  @override
  Future<List<ShowResponseEntity>?> getShows() async {
    return await _remoteDataSource.getShows();
  }
}
