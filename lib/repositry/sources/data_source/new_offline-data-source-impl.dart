import 'package:hive/hive.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_contract.dart';

class SourceOfflineDataSourceImpl implements SourceOfflineDataSource{
  @override
  Future<SourceResponse?> getSources(String categoryId)async {
    var box = await  Hive.openBox('tabs');
   var response =  SourceResponse.fromJson(box.get(categoryId));
   return response;
  }

  @override
  void saveSources(SourceResponse? sourceResponse,String category)async {
  var box = await  Hive.openBox('tabs');
  await box.put(category, sourceResponse?.toJson());
  box.close();
  }
  
}