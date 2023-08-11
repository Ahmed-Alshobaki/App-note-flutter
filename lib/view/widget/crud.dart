
import 'package:http/http.dart'as http;
import 'dart:convert';
class Card1 {


  getRequest (String url )async{
   try{
     var request = await http.get(Uri.parse(url));
     if (request.statusCode==200){
      var requestbody  = jsonEncode(request.body);
        return requestbody;
     }else{
       print(request.statusCode);
     }

   }catch(e){
    print(e);
   }
  }
  postRequest (String url,Map data )async{
    try{
      var request = await http.post(Uri.parse(url), body:data);
      if (request.statusCode==200){
        var requestbody  = jsonEncode(request.body);
        return requestbody;
      }else{
        print(request.statusCode);
      }

    }catch(e){
      print(e);
    }
  }
}