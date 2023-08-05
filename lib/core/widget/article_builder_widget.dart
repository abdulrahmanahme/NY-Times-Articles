
import 'package:artical/core/enum/enum.dart';
import 'package:artical/core/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/controller/bloc/article_bloc.dart';
import '../../presentation/controller/bloc/article_state.dart';
import '../../presentation/screens/article_screen.dart';

class ArticleBuilder extends StatelessWidget {
  const ArticleBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleBloc, ArticlesState>(builder: (context, state) {
      switch (state.articleState) {
        case ArticleState.Loading:
          return const SizedBox(
            height: 400.0,
            child: Center(child: CircularProgressIndicator()),
          );
        case ArticleState.Loaded:
          return ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: state.results.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticlesScreen(
                        title: state.results[index].title.toString(),
                        abstractBrief:
                            state.results[index].abstractBrief.toString(),
                        byline: state.results[index].byline.toString(),
                        date: state.results[index].publishedDate.toString(),
                        image: state
                            .results[index].media![0].mediaMetadata![2].url,
                        source: state.results[index].source.toString(),
                        article: state.results[index].adxKeywords.toString(),
                      ),
                    ),
                  );
                },
                child: ArticleWidget(
                  title: state.results[index].title.toString(),
                  byline: state.results[index].byline.toString(),
                  date: state.results[index].publishedDate.toString(),
                  image: state.results[index].media![0].mediaMetadata![1].url,
                ),
              );
            },
          );
          
        case ArticleState.Error:
          return SizedBox(
            height: 400.0,
            child: Text(
              state.articleError,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          );
      }
    });
  }
}
