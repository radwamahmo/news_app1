import 'package:news_app/model/SourceResponse.dart';

abstract class SourcesStates{}
class SourceInitialState extends SourcesStates{}
class SourceLoadingState extends SourcesStates{

}
class SourceErrorState extends SourcesStates{
  String? errorMessage;
  SourceErrorState({required this.errorMessage});
}
class SourceSucessState extends SourcesStates{
  List<Source> sourcesList ;
  SourceSucessState({required this.sourcesList});
}