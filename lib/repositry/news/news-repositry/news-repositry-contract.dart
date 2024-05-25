import 'package:news_app/model/NewsResponse.dart';

abstract class NewsRepositryContract{
  Future<NewsResponse?> getNews(String sourceId);
}

abstract class NewsRemoteDataSource{
  Future<NewsResponse?> getNews(String sourceId);
}

abstract class NewsLocalDataSource{}

