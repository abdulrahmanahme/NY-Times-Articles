import 'package:artical/domain/entites/results_entit.dart';
import 'package:equatable/equatable.dart';
import '../../../core/enum/enum.dart';
class ArticlesState extends Equatable {
  final List<Results> results;
  final ArticleState articleState;
  final String articleError;
  const ArticlesState({
    this.results = const [],
    this.articleState = ArticleState.Loading,
    this.articleError = '',
  });
  ArticlesState copyWith({
    List<Results>? results,
    ArticleState? articleState,
    String? articleError,
  }) =>
      ArticlesState(
        results: results ?? this.results,
        articleState: articleState ?? this.articleState,
        articleError: articleError ?? this.articleError,
      );

  @override
  List<Object?> get props => [
        results,
        articleState,
        articleError,
      ];
}
