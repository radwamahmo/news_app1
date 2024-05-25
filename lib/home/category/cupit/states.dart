import 'package:news_app/model/SourceResponse.dart';

abstract class SourceStates{}
class SourceInitialState extends SourceStates{}
class SourceLoadingState extends SourceStates{}
class SourceErrorState extends SourceStates{
  String? errorMessage;
  SourceErrorState({required this.errorMessage});
}
class SourceSucessState extends SourceStates{

  List<Source> sourcesList ;
  SourceSucessState({required this.sourcesList});
}