import 'package:artical/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import '../entites/results_entit.dart';
abstract class BaseArticleRepesitory{
Future<Either<Failure,List<Results>>>getArticles();
}