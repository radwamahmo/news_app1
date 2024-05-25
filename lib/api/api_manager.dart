import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/model/NewsResponse.dart';

import 'package:news_app/model/SourceResponse.dart';

class ApiManager{

  ApiManager._();
static ApiManager? _instance;

static ApiManager getInstance(){
   _instance ??= ApiManager._();
   return _instance!;
}


/*
https://newsapi.org/v2/top-headlines/sources?apiKey=API_KEY
b92e0ab04d7741aab7c3c408a24e0515
 */


static Future<SourceResponse?> getSources(String categoryId)async{

  Uri url = Uri.http(ApiConstants.baseurl,ApiConstants.sourcesApi,
  {
    'apiKey' : 'b92e0ab04d7741aab7c3c408a24e0515',
    'category': categoryId
  });
  try{
    var response = await http.get(url);
    var responseBody = response.body ; //string
    var json = jsonDecode(responseBody); //json
    return SourceResponse.fromJson(json);
  }catch(e){
    throw e;
  }


}

/*
https://newsapi.org/v2/everything?apiKey=b92e0ab04d7741aab7c3c408a24e0515
 */
static Future<NewsResponse?> getNewsBySourceId (String sourceId)async{
  Uri url = Uri.https(ApiConstants.baseurl,ApiConstants.newsApi,{
    'apiKey': 'b92e0ab04d7741aab7c3c408a24e0515',
    'sources' : sourceId,

  });
  try{
    var response = await  http.get(url);
    var responseBody = response.body;
    var json = jsonDecode(responseBody);
    return NewsResponse.fromJson(json);
  }catch (e){
    throw e ;
  }

}
}

