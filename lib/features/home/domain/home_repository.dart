import 'package:crow/crow.dart';
import 'package:tv_shows/features/home/domain/entity/show_response_entity.dart';

abstract class HomeRepository extends Repository {
  Future<List<ShowResponseEntity>?> getShows();
}
