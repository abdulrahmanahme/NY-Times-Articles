import 'package:artical/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T>{
Future<Either<Failure,T>>call();
}