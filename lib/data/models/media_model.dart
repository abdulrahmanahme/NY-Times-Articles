
import 'package:artical/data/models/media_meta_model.dart';
import 'package:artical/domain/entites/media_entite.dart';
class MediaModel extends Media {
  const MediaModel({super.mediaMetadata});
  factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
      mediaMetadata: List.from(
          (json['media-metadata']).map((e) => MediaMetadataModel.fromJson(e))));
}