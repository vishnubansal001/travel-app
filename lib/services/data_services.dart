import 'dart:convert';
import 'package:demoproject/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  static const String baseUrl = "http://mark.bslmeiyu.com";
  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/api/getplaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
