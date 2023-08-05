import 'package:artical/data/models/result_model.dart';
import 'package:artical/domain/entites/articles_entite.dart';


class ArticlesModel extends Articles {
  const ArticlesModel({super.status, super.results});
  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        status: json['status'],
        results: List.from(
          (json['results']).map((e) => ResultsModel.fromJson(e)),
        ),
      );
}






