import 'package:dio/dio.dart';
import '../../../core/app_constances/app_constances.dart';
import '../../../domain/entites/articels_model.dart';

class ArticlesRemoteDataSource {
  Future<List<Results>> getArticels() async {
    final response = await Dio().get(AppConstances.baseUrl);
    if (response.statusCode == 200) {
      return List<Results>.from((response.data["results"] as List).map((e) => Results.fromJson(e)));
    } else {
      throw Exception('API returned an error');
    }
  }
}
