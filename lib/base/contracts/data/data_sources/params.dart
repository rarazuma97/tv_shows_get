import 'package:crow/crow.dart';
import 'package:tv_shows/base/contracts/data/data_sources/data_source.dart';

class Params<E extends Entity> {
  Params({
    this.entity,
    this.page,
    this.records,
    this.sort,
    this.filters,
  });

  E? entity;
  int? page;
  int? records;
  Map<String, SortOrder>? sort;
  Map<String, dynamic>? filters;
}
