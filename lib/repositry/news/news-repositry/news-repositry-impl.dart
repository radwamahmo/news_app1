import 'package:news_app/model/NewsResponse.dart';

import 'news-repositry-contract.dart';


class NewsRepositryImpl implements NewsRepositryContract{
  NewsRemoteDataSource remoteDataSource;
  NewsRepositryImpl({required this.remoteDataSource});
  @override
  Future<NewsResponse?> getNews(String sourceId) {
 return remoteDataSource.getNews(sourceId);
  }

}