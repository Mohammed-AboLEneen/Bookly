import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks() async {
    // TODO: implement fetchFeaturedBooks

    Dio dio = Dio();

    try{

      Response response = await dio.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:computer science');

      List<BookModel> books = [];

      for (var element in response.data) {

        books.add(BookModel.fromJson(element));
      }

      return Right(books);

    }catch(e){

    }

    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
