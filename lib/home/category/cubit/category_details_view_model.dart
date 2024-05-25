
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/home/category/cubit/states.dart';
import 'package:news_app/repositry/sources/data_source/source_remote_data_source_impl.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_contract.dart';
import 'package:news_app/repositry/sources/repositry/source_repositry_impl.dart';



class CategoryDetailsViewModel extends Cubit<SourcesStates>{
  SourceRepositryContract repositryContract;
  CategoryDetailsViewModel({required this.repositryContract}):super(SourceLoadingState());



  void getSources(String categoryId)async{
    try{
      emit(SourceLoadingState());
      var response= await repositryContract.getSources(categoryId);
      if(response!.status== 'error'){
        emit(SourceErrorState(errorMessage: response.message));
        return;
      }
      if(response.status=='ok'){
        emit(SourceSucessState(sourcesList: response.sources!));
        return;
      }
    }catch(e){
      emit(SourceErrorState(errorMessage: 'Error Loading Source List'));
    }
  }
  }







