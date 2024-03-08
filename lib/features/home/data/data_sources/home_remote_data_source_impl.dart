
import 'package:dio/dio.dart';
import 'package:tv_shows/base/api/endpoints.dart';
import 'package:tv_shows/base/utils/logger.dart';
import 'package:tv_shows/base/utils/typedefs.dart';
import 'package:tv_shows/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:tv_shows/features/home/data/models/show_response_model.dart';
import 'package:tv_shows/features/home/domain/entity/show_response_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<ShowResponseEntity>?> getShows() async {
    try {
      Logger.trying('getShows', runtimeType);
      final Response<List<dynamic>> response = await client.get(
        endpoint: Endpoints.baseUrl,
      );

      if (response.data == null) return null;
      Logger.success('getShows', runtimeType);
      return response.data!.map((e) {
        return ShowResponseModel.fromJson(e as JsonObject)
            .toEntity();
      }).toList();
    } catch (e, stackTrace) {
      Logger.errorLog(e, stackTrace, runtimeType);
    }
    return null;
  }
}


