import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BaseServiceApi {
  final String point = "";
  final successStatusCode = 0;
  Dio _dio = Dio();

  Future<Either<Exception, String>> getData() async {
    try {
      final response = await _dio.get(point);

      //fetch case then error is not trown but api does not return successfull data
      if (response.statusCode != successStatusCode) return Left(Exception(""));

      return Right(response.data);
    } catch (e) {
      return Left(
        Exception(e),
      );
    }
  }
}
