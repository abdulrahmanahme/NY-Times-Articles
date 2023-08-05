import '../../domain/entites/meda_meta_enite.dart';

class MediaMetadataModel extends MediaMetadata {
  const MediaMetadataModel({
    super.url,
    super.format,
  });
  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      MediaMetadataModel(url: json['url']);
}