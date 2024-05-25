import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';

import 'package:news_app/tab/tab_widget.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/my_theme.dart';

import '../../model/category.dart';


class CategoryDetails extends StatefulWidget {
static const String routeName = 'category-details' ;
 CategoryDM category;
 CategoryDetails({required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<SourceResponse?>(
              future: ApiManager.getSources(widget.category.id),
              builder:(context,snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: MyTheme.primaryLightcolor,
                    ),
                  );
                }else if(snapshot.hasError){
                  return Column(
                    children: [
                      Text('Something went wrong'),
                      ElevatedButton(onPressed: (){
                        ApiManager.getSources(widget.category.id);
                        setState(() {

                        });
                      }, child: Text('Try Again'))
                    ],
                  );
                }
                if(snapshot.data?.status != 'ok'){
                  return Column(
                    children: [
                      Text(snapshot.data!.message!),
                      ElevatedButton(onPressed: (){
                        ApiManager.getSources(widget.category.id);
                        setState(() {

                        });
                      }, child: Text('Try Again'))
                    ],
                  );
                }
                var sourceList = snapshot.data?.sources ?? [];
                return TabWidget(sourcesList: sourceList) ;


              }

          );
  }
}
