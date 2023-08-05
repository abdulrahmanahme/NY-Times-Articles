import 'package:artical/domain/entites/articles_entite.dart';
import 'package:artical/domain/entites/media_entite.dart';
import 'package:equatable/equatable.dart';

class Results extends Equatable {
  final int? id;
  final String? source;
  final String? publishedDate;
  final String? adxKeywords;
  final String? byline;
  final String? title;
  final String? abstractBrief;
  final List<Media>? media;
  const Results({
    this.id,
    this.source,
    this.publishedDate,
    this.adxKeywords,
    this.byline,
    this.title,
    this.abstractBrief,
    this.media,
  });

  @override
  List<Object?> get props => [
        id,
        source,
        publishedDate,
        adxKeywords,
        byline,
        title,
        abstractBrief,
        media
      ];
}