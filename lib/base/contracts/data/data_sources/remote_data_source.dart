import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows/base/contracts/data/data_sources/data_source.dart';
import 'package:tv_shows/base/contracts/data/data_sources/entity.dart';
import 'package:tv_shows/base/network/client_service.dart';


abstract class BaseRemoteDataSource<ID, E extends Entity, P extends Params<E>>
    extends DataSource<E, P> {
  ApiClient get client => Get.find<ApiClient>();
}

@optionalTypeArgs
abstract class RemoteDataSource<ID, E extends Entity, P extends Params<E>>
    extends BaseRemoteDataSource<ID, E, P> {}
