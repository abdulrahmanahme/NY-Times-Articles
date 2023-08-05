import 'package:get_it/get_it.dart';

import '../../data/datasource/remote_data/articels_reomte_data_source.dart';
import '../../data/repesitory/article_repesitory.dart';
import '../../domain/repesitory/base_article_repesitory.dart';
import '../../domain/usecase/article_use_case.dart';
import '../../presentation/controller/bloc/article_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// BLOC
    sl.registerFactory(() => ArticleBloc(sl()));
    //   /////UseCase
    sl.registerLazySingleton(() => ArticleUseCase(sl()));
    //    // Repository
    sl.registerLazySingleton<BaseArticleRepesitory>(
        () => ArticleRepeitory(sl()));
    //   //Data Source
    sl.registerLazySingleton<BaseArticlesRemoteDataSource>(
        () => ArticlesRemoteDataSource());
  }
}
