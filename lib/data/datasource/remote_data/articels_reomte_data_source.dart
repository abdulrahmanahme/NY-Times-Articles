import 'package:artical/data/datasource/remote_data/error_message_model.dart';
import 'package:dio/dio.dart';
import '../../../core/app_constances/app_constances.dart';
import '../../../core/server/expations.dart';
import '../../models/result_model.dart';
abstract class BaseArticlesRemoteDataSource{
Future<List<ResultsModel>> getArticels();
}

class ArticlesRemoteDataSource extends BaseArticlesRemoteDataSource{
  @override
  Future<List<ResultsModel>> getArticels() async {
    final response = await Dio().get(AppConstances.baseUrl);
    if (response.statusCode == 200) {
      return List<ResultsModel>.from((response.data["results"] as List).map((e) => ResultsModel.fromJson(e)));
    } else {
      throw ServerExtaion(
        errorMessageModel:ErrorMessageModel.fromJson(response.data) ,
      );
    }
  }
}
