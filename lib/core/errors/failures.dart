import 'package:dio/dio.dart';

abstract class Failure{

  String? message;
  Failure(this.message);

}


class ServerFailure extends Failure {
  ServerFailure(super.message);


  factory ServerFailure.fromError(DioException dioError){

    dioError.response?.data;
    return ServerFailure('${dioError.message}, Please Try Again!');
  }
}

// switch (dioError.type) {
// //   case DioExceptionType.receiveTimeout:
// //     return ServerFailure('Receive Timeout, Please Try Again!');
// //   case DioExceptionType.connectionTimeout:
// //     return ServerFailure('connection Timeout, Please Try Again!');
// //   case DioExceptionType.sendTimeout:
// //     ServerFailure('send Timeout, Please Try Again!');
// //   case DioExceptionType.badCertificate:
// //     ServerFailure('bad Certificate, Please Try Again!');
// //   case DioExceptionType.badResponse:
// //     ServerFailure('bad Certificate, Please Try Again!');
// //   case DioExceptionType.cancel:
// //     ServerFailure(DioExceptionType.cancel.);
// //   case DioExceptionType.connectionError:
// //     ServerFailure('connection Error, Please Try Again!');
// //   case DioExceptionType.unknown:
// //     return ServerFailure('Ops! Some Thing Wrong, Try Again Please!');
// //   default:
// //     return ServerFailure('Ops! Some Thing Wrong, Try Again Please!');
// // }
// // return ServerFailure('Ops! Some Thing Wrong, Try Again Please!');

// factory ServerFailure.fromResponse(int statusCode, dynamic response){
// if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
// return ServerFailure(response['error']['message']);
// }
//
// return ServerFailure('Error in Url, Not Found!');
// }
