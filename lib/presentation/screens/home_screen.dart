import 'package:artical/core/widget/widget.dart';
import 'package:artical/presentation/screens/article_screen.dart';
import 'package:flutter/material.dart';
import '../../data/datasource/remote_data/articels_reomte_data_source.dart';
import '../../domain/entites/articels_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ArticlesRemoteDataSource? dataSource;
  List<Results>? data;
  bool isLoading = true;
  @override
  void initState() {
    ArticlesRemoteDataSource().getArticels().then((value) {
      setState(() {
        isLoading = false;
        data = value;
        print('ddsssss${data![1].media![0].mediaMetadata![1].url}');
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
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
      body: Column(
        children: [
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArticlesScreen(
                              title: data![index].title.toString(),
                              abstractBrief:
                                  data![index].abstractBrief.toString(),
                              byline: data![index].byline.toString(),
                              date: data![index].publishedDate.toString(),
                              image:
                                  data![index].media![0].mediaMetadata![2].url,
                              source: data![index].source.toString(),
                              article: data![index].adxKeywords.toString(),
                            ),
                          ),
                        );
                      },
                      child: ArticleWidget(
                        title: data![index].title.toString(),
                        byline: data![index].byline.toString(),
                        date: data![index].publishedDate.toString(),
                        image: data![index].media![0].mediaMetadata![1].url,
                      ),
                    );
                  },
                )
        ],
      ),
    );
  }
}
