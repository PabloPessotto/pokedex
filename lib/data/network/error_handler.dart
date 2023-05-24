import 'package:dio/dio.dart';
import 'package:pokedex/domain/model/message.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError,
  endpointNotFound,
}

class ErrorHandler implements Exception {
  late Message message;

  ErrorHandler.handler(dynamic error) {
    if (error is DioError) {
      // dio error
      message = _handlerError(error);
    } else {
      message = DataSource.defaultError.getFailure();
    }
  }

  Message _handlerError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return DataSource.connectionTimeout.getFailure();
      case DioErrorType.sendTimeout:
        return DataSource.sendTimeout.getFailure();
      case DioErrorType.receiveTimeout:
        return DataSource.receiveTimeout.getFailure();
      case DioErrorType.badResponse:
        switch (error.response?.statusCode) {
          case ResponseCode.badRequest:
            return DataSource.badRequest.getFailure();
          case ResponseCode.forbidden:
            return DataSource.forbidden.getFailure();
          case ResponseCode.unauthorized:
            return DataSource.unauthorized.getFailure();
          case ResponseCode.notFound:
            return DataSource.notFound.getFailure();
          case ResponseCode.internalServerError:
            return DataSource.internalServerError.getFailure();
          default:
            return DataSource.defaultError.getFailure();
        }
      case DioErrorType.cancel:
        return DataSource.cancel.getFailure();
      case DioErrorType.connectionError:
        return DataSource.connectionTimeout.getFailure();
      case DioErrorType.unknown:
        return DataSource.defaultError.getFailure();
      default:
        return DataSource.defaultError.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Message getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Message(ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Message(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unauthorized:
        return Message(ResponseCode.unauthorized, ResponseMessage.unauthorized);
      case DataSource.notFound:
        return Message(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return Message(
            ResponseCode.internalServerError, ResponseMessage.internalServerError);
      case DataSource.connectionTimeout:
        return Message(
            ResponseCode.connectionTimeout, ResponseMessage.connectionTimeout);
      case DataSource.cancel:
        return Message(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.receiveTimeout:
        return Message(ResponseCode.receiveTimeout, ResponseMessage.receiveTimeout);
      case DataSource.sendTimeout:
        return Message(ResponseCode.sendTimeout, ResponseMessage.sendTimeout);
      case DataSource.cacheError:
        return Message(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Message(
            ResponseCode.noInternetConnection, ResponseMessage.noInternetConnection);
      case DataSource.defaultError:
        return Message(ResponseCode.unknownError, ResponseMessage.unknownError);
      case DataSource.endpointNotFound:
        return Message(
            ResponseCode.endpointNotFound, ResponseMessage.endpointNotFound);
      default:
        return Message(ResponseCode.unknownError, ResponseMessage.unknownError);
    }
  }
}

class ResponseCode {
  //api status code
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int internalServerError = 500;
  static const int endpointNotFound = 502;

  //local status code
  static const int unknownError = -1;
  static const int connectionTimeout = -2;
  static const int cancel = -2;
  static const int receiveTimeout = -4;
  static const int sendTimeout = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;
}

class ResponseMessage {
  //api status code
  static const String success = "Success";
  static const String noContent = "No Content";
  static const String badRequest = "Bad Request";
  static const String forbidden = "Forbidden";
  static const String unauthorized = "Unauthorized";
  static const String notFound = "Not Found";
  static const String internalServerError = "Internal Server Error";
  static const String endpointNotFound = "Endpoint Not Found";

  //local status code
  static const String unknownError = "Unknown Error";
  static const String connectionTimeout = "Connection Timeout";
  static const String cancel = "Cancel";
  static const String receiveTimeout = "Receive Timeout";
  static const String sendTimeout = "Send Timeout";
  static const String cacheError = "Cache Error";
  static const String noInternetConnection = "No Internet Connection";
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
