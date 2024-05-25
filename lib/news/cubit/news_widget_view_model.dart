import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/news/cubit/states.dart';

class NewsWidgetViewModel extends Cubit<NewsStates>{
  NewsWidgetViewModel():super(NewsLoadingStates());

  void getNewsByCategoryId (String sourceId)async{
    try{
      emit(NewsLoadingStates());
      emit(MessageState(loadingMessage: 'Loading.....'));
      emit(ChangeSource(selectedindex: 0 ));
      var response= await  ApiManager.getNewsBySourceId(sourceId);
      if(response!.status =='error'){
        emit(NewsErrorStates(errorMessage: response.message));
        return;
      }
      if(response.status =='ok'){
        emit(NewsSuccessStates(newsList: response.articles!));
      }
    }catch(e){
       emit(NewsErrorStates(errorMessage: 'Error Loading News List'));
    }

  }
}