import 'dart:async';

import 'package:artical/core/enum/enum.dart';
import 'package:artical/presentation/controller/bloc/article_events.dart';
import 'package:artical/presentation/controller/bloc/article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecase/article_use_case.dart';

class ArticleBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final ArticleUseCase articleUseCase;
  ArticleBloc(this.articleUseCase): super(const ArticlesState()) {
    on<ArticlesEvent>(getAticles);
  }
  FutureOr<void> getAticles(ArticlesEvent event,Emitter<ArticlesState> emit) async {
    var result = await articleUseCase();
    result.fold((l) {
      emit(state.copyWith(
          articleState: ArticleState.Error, articleError: l.message));
    }, (r) {
      emit(state.copyWith(articleState: ArticleState.Loaded, results: r));
    });
  }
}
