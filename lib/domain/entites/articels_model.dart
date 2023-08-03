class Articles {
  String? status;
  List<Results>? results;
  Articles({this.status, this.results});

  Articles.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }
}

class Results {
  int? id;
  String? source;
  String? publishedDate;
  String? adxKeywords;
  String? byline;
  String? title;
  String? abstractBrief;
  List<Media>? media;
  Results({
    this.id,
    this.source,
    this.publishedDate,
    this.adxKeywords,
    this.byline,
    this.title,
    this.abstractBrief,
    this.media,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    source = json['source'];
    publishedDate = json['published_date'];
    adxKeywords = json['adx_keywords'];
    byline = json['byline'];
    title = json['title'];
    abstractBrief = json['abstract'];

    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
  }
}

class Media {
  List<MediaMetadata>? mediaMetadata;
  Media({this.mediaMetadata});
  Media.fromJson(Map<String, dynamic> json) {
    if (json['media-metadata'] != null) {
      mediaMetadata = <MediaMetadata>[];
      json['media-metadata'].forEach((v) {
        mediaMetadata!.add(MediaMetadata.fromJson(v));
      });
    }
  }
}

class MediaMetadata {
  String? url;
  String? format;
  MediaMetadata({
    this.url,
    this.format,
  });

  MediaMetadata.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
