import 'package:news_app/model/SourceResponse.dart';

abstract class SourceRepositryContract{
 Future<SourceResponse?>  getSources(String categoryId);
}

abstract class SourceRemoteDataSource{
  Future<SourceResponse?>  getSources(String categoryId);
}

abstract class SourceOfflineDataSource{
 Future<SourceResponse?> getSources(String categoryId);

 void saveSources( SourceResponse? sourceResponse, String category);
}


