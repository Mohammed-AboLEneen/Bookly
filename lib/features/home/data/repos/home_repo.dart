import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

  Future<Either<ServerFailure, List<BookModel>>> fetchNewestBooks();
  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks();


}