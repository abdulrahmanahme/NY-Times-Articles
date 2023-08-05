import '../../data/datasource/remote_data/error_message_model.dart';
class ServerExtaion implements Exception{
  final ErrorMessageModel  errorMessageModel;
 const  ServerExtaion ({required this.errorMessageModel});

}