import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: "Connection timeout. Please try again.",
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: "Request send timeout. Please check your network.",
        );

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: "Response timeout. Please try again later.",
        );

      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage: "SSL certificate validation failed.",
        );

      case DioExceptionType.badResponse:
        return ServerFailure(
          errorMessage:
              "Server error occurred (Status Code: ${dioError.response?.statusCode}).",
        );

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request was cancelled.");

      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: "Network error. Please check your internet connection.",
        );

      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: "An unknown error occurred. Please try again.",
        );
    }
  }
}
