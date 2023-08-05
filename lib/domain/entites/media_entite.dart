
import 'package:artical/domain/entites/meda_meta_enite.dart';
import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final List<MediaMetadata>? mediaMetadata;
  const Media({this.mediaMetadata});

  @override
  List<Object?> get props => [mediaMetadata];
}