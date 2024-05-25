import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/home/category/cupit/states.dart';
import 'package:news_app/model/SourceResponse.dart';

class CategoryDetailsViewModel extends Cubit<SourceStates>{
 CategoryDetailsViewModel(): super(SourceLoadingState());
 // todo: hold data  - handle logic

 void getSources(String categoryId)async{
  try{
   emit(SourceLoadingState());
   var response = await ApiManager.getSources(categoryId);
   if(response!.status == 'error'){
    emit(SourceErrorState(errorMessage: response.message));
    return;
   }
   if(response.status == 'ok'){
    emit(SourceSucessState(sourcesList: response.sources!));
    return ;
   }
  }catch(e){
   emit(SourceErrorState(errorMessage: 'Error Loading Source List.'));
  }
   }
}