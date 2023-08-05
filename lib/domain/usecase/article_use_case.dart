import 'package:artical/core/failure/failure.dart';
import 'package:artical/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import '../entites/results_entit.dart';
import '../repesitory/base_article_repesitory.dart';

class ArticleUseCase extends BaseUseCase<List<Results>>{
 final BaseArticleRepesitory baseArticleRepesitory;
  ArticleUseCase(this.baseArticleRepesitory);
  @override
  Future<Either<Failure,List<Results>>>call()async {
    return await  baseArticleRepesitory.getArticles();
  }
}