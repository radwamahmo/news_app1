import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_contract.dart';

class SourceRepositryImpl implements SourceRepositryContract {
  SourceRemoteDataSource remoteDataSource;
  SourceOfflineDataSource offlineDataSource;

  SourceRepositryImpl(
      {required this.remoteDataSource, required this.offlineDataSource});

  @override
  Future<SourceResponse?> getSources(String categoryId)async {
    var connectivityResult = Connectivity()
        .checkConnectivity(); // User defined class
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi){
    var sourceResponse= await  remoteDataSource.getSources(categoryId);
    offlineDataSource.saveSources(sourceResponse,categoryId);
    return sourceResponse;
    }else{
    var response = await  offlineDataSource.getSources(categoryId);
    return response;
    }
  }
}