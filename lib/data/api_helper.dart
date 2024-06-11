import 'dart:convert';

import 'package:http/http.dart' as httpclint;
class ApiHelper{

  Future<dynamic> getAPI({ required String url}) async {
    var uri = Uri.parse(url);
      var response = await httpclint.get(uri,headers:{
      "x-rapidapi-key": "dfdbdc25femsh1506f9d18266449p15014ejsnf79422e1da48",
      "x-rapidapi-host": "yummly2.p.rapidapi.com"
      });
      if(response.statusCode == 200){
        var mData = jsonDecode(response.body);

        return mData;

      }else{
        return null;
      }

  }
}