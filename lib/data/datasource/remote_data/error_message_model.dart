
class ErrorMessageModel {
 Fault? fault;
  ErrorMessageModel({this.fault});
  ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    fault = json['fault'] != null ? Fault.fromJson(json['fault']) : null;
  }
}

class Fault {
  String? faultstring;
  Detail? detail;
  Fault({this.faultstring, this.detail});
  Fault.fromJson(Map<String, dynamic> json) {
    faultstring = json['faultstring'];
    detail = json['detail'] != null ? Detail.fromJson(json['detail']) : null;
  }
}

class Detail {
  String? errorcode;
  Detail({this.errorcode});
  Detail.fromJson(Map<String, dynamic> json) {
    errorcode = json['errorcode'];
  }
}
