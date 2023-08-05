import 'package:artical/data/models/media_model.dart';
import 'package:artical/domain/entites/results_entit.dart';

class ResultsModel extends Results {
  const ResultsModel({
    super.id,
    super.source,
    super.publishedDate,
    super.adxKeywords,
    super.byline,
    super.title,
    super.abstractBrief,
    super.media,
  });
  factory ResultsModel.fromJson(Map<String, dynamic> json) => ResultsModel(
        id: json['id'],
        source: json['source'],
        publishedDate: json['published_date'],
        adxKeywords: json['adx_keywords'],
        byline: json['byline'],
        title: json['title'],
        abstractBrief: json['abstract'],
        media: List.from((json['media']).map((e) => MediaModel.fromJson(e))),
      );
}