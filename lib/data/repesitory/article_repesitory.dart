import 'package:artical/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import '../../core/server/expations.dart';
import '../../domain/entites/results_entit.dart';
import '../../domain/repesitory/base_article_repesitory.dart';
import '../datasource/remote_data/articels_reomte_data_source.dart';

class ArticleRepeitory extends BaseArticleRepesitory{
  BaseArticlesRemoteDataSource baseArticlesRemoteDataSource;
  ArticleRepeitory(this.baseArticlesRemoteDataSource);
  @override
  Future<Either<Failure, List<Results>>> getArticles()async {
    final result =await baseArticlesRemoteDataSource.getArticels();
    try{
      return  right(result);
    } on ServerExtaion catch (failure){
     return left(
      ServerFailure(message:failure.errorMessageModel.fault!.faultstring!)
     );
    }
  }
}