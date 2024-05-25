import 'package:flutter/material.dart';
import 'package:news_app/my_theme.dart';

import '../model/SourceResponse.dart';

class TabItem extends StatelessWidget {
 bool isSelected;
 Source source;
 TabItem({ required this.source,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: MyTheme.primaryLightcolor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
         color: isSelected ? MyTheme.primaryLightcolor : Colors.transparent
      ),
      child: Text(source.name?? '',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: isSelected ? MyTheme.whitecolor : MyTheme.primaryLightcolor,
        fontSize: 18
      ),),
    ) ;
  }
}
