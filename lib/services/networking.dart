import 'package:http/http.dart' as http;
import 'dart:convert';


class Networkhelper {
  final String url;
  Networkhelper({required this.url});

  Future getdata()async{
    var uri = Uri.parse(url);
    
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      var bodys = response.body;

      return  jsonDecode(bodys);
      } else {
        
      return 0 ;
    }
  }

}