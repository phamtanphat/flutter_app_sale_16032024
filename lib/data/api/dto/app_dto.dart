class AppDTO<T> {
  num? result;
  T? data;
  String? message;

  AppDTO.fromJSON(Map<String, dynamic> json, Function parseData) {
    result = json['result'];
    data = parseData(json["data"]);
    message = json['message'];
  }
}
