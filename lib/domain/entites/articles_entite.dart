import 'package:artical/domain/entites/results_entit.dart';
import 'package:equatable/equatable.dart';

class Articles extends Equatable {
  final String? status;
  final List<Results>? results;
  const Articles({this.status, this.results});
  @override
  List<Object?> get props => [status, results];
}




