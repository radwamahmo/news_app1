  import 'package:news_app/api/api_manager.dart';
import 'package:news_app/repositry/news/news-data-source/news-data-source-impl.dart';
import 'package:news_app/repositry/news/news-repositry/news-repositry-contract.dart';
import 'package:news_app/repositry/sources/data_source/new_offline-data-source-impl.dart';
import 'package:news_app/repositry/sources/data_source/source_remote_data_source_impl.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_contract.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_impl.dart';

import 'repositry/news/news-repositry/news-repositry-impl.dart';

NewsRepositryContract  injectNewsRepositryContract(){
 return NewsRepositryImpl(remoteDataSource:injectNewsRemoteDataSource());
}

  NewsRemoteDataSource injectNewsRemoteDataSource(){
  return NewsRemoteDataSourceImpl(apiManager: ApiManager.getInstance());

}




  SourceRepositryContract  injectSourceRepositryContract(){
    return SourceRepositryImpl(remoteDataSource:injectSourceRemoteDataSource(),
    offlineDataSource: injectSourceOfflineDataSource());
  }

  SourceRemoteDataSource injectSourceRemoteDataSource(){
    return SourceRemoteDataSourceImpl(apiManager: ApiManager.getInstance());

  }

SourceOfflineDataSource  injectSourceOfflineDataSource(){
 return SourceOfflineDataSourceImpl();
  }