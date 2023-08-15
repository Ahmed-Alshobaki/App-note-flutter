import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path/path.dart';

class Card1 {
  getRequest(String url) async {
    try {
      var request = await http.get(Uri.parse(url));
      if (request.statusCode == 200) {
        var requestbody = jsonEncode(request.body);
        return requestbody;
      } else {
        print(request.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  postRequest(String url, Map data) async {
    try {
      var request = await http.post(Uri.parse(url), body: data);
      if (request.statusCode == 200) {
        var requestbody = jsonDecode(request.body);
        return requestbody;
      } else {
        print(request.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  postRequestFile(String url, Map data, File file) async {
    try {
      var request = http.MultipartRequest("POST", Uri.parse(url));
      var length = await file.length();
      var strem = http.ByteStream(file.openRead());
      var MultipartFile = http.MultipartFile("file", strem, length,
          filename: basename(file.path));
      request.files.add(MultipartFile);
      data.forEach((key, value) {
        request.fields[key] = value;
      });
      var myrequest = await request.send();
      var response = await http.Response.fromStream(myrequest);
      if (myrequest.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Error");
      }
    } catch (e) {
      print(e);
    }
  }
}
