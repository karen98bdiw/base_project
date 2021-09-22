import 'package:baseproj/model/core/base_model.dart';
import 'package:baseproj/model/error/error.dart';
import 'package:baseproj/model/service/api/base_service_api.dart';
import 'package:dartz/dartz.dart';

class BaseHelper {
  final _baseService = BaseServiceApi();

  Future<Either<Error, BaseModel>> getData() async {
    final serviceResult = await _baseService.getData();

    return serviceResult.fold(
      (l) => Left(
        Error(message: l.toString()),
      ),
      (r) => Right(
        BaseModel.fromJson(r),
      ),
    );
  }
}
