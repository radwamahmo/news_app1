import 'package:news_app/model/NewsResponse.dart';

abstract class NewsStates{}
class NewsLoadingStates extends NewsStates{}
class NewsErrorStates extends NewsStates{
  String? errorMessage;
  NewsErrorStates({required this.errorMessage});
}
class NewsSuccessStates extends NewsStates{
  List<News> newsList;
  NewsSuccessStates({required this.newsList});
}
class MessageState extends NewsStates{
  String? loadingMessage;
  MessageState({required this.loadingMessage});
}
class ChangeSource extends NewsStates{
  int selectedindex =0;
  ChangeSource({required this.selectedindex});
}
