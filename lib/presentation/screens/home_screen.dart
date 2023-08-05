import 'package:artical/core/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/services/services.dart';
import '../../core/widget/article_builder_widget.dart';
import '../controller/bloc/article_bloc.dart';
import '../controller/bloc/article_events.dart';
import '../controller/bloc/article_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ArticleBloc>()..add(GetArticlesEvent()),
      child: BlocBuilder<ArticleBloc, ArticlesState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const IconWidget(
              icon: Icons.menu,
              size: 25,
              color: Colors.white,
            ),
            title: const TextWidget(
              name: 'NY Times Most Popular',
              fontSize: 20,
              color: Colors.white,
            ),
            centerTitle: true,
            backgroundColor: const Color(0xff45E3C2),
            actions: appBarWidget,
          ),
          body: const  SingleChildScrollView(
            child:Column(
              children: [
              ArticleBuilder(),
              
              ],
            ),
          ),
        );
      }),
    );
  }
}

