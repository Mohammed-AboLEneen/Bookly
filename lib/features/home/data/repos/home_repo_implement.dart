import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks(String queryParams) async {

    // &Sorting=newest
    // https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=computer science

    Dio dio = Dio();

    try{

      Response response = await dio.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks$queryParams&q=subject:computer science');

      List<BookModel> books = [];

      for (var element in response.data['items']) {

        books.add(BookModel.fromJson(element));
      }

      return Right(books);

    }catch(e){

      if(e is DioException){

        return Left(ServerFailure.fromError(e));
      }

      print(e.toString());

      return Left(ServerFailure(e.toString()));
    }
  }
}
