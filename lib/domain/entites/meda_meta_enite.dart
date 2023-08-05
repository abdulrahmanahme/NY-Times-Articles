import 'package:equatable/equatable.dart';

class MediaMetadata extends Equatable {
  final String? url;
  final String? format;
  const MediaMetadata({
    this.url,
    this.format,
  });

  @override
  List<Object?> get props => [url, format];
}
