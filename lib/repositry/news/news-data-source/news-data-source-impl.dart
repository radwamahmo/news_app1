
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/model/NewsResponse.dart';

import '../news-repositry/news-repositry-contract.dart';


class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  ApiManager apiManager;
  NewsRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<NewsResponse?> getNews(String sourceId) async{
  var response = await ApiManager.getNewsBySourceId(sourceId);
  return response;
  }


}