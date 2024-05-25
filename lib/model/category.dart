

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:news_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class CategoryDM {
  String id;
  String title;
  String imagepath;
  Color color;



  CategoryDM({required this.id, required this.title,
    required this.imagepath, required this.color});

 





  static List<CategoryDM> getCategories() {

    return [
      CategoryDM(id: 'sports', title: 'Sports' ,
        imagepath: 'assets/images/ball.png', color: MyTheme.redcolor,
      ),
      CategoryDM(id: 'general', title: 'General',
        imagepath: 'assets/images/Politics.png', color: MyTheme.darkbluecolor,
      ),
      CategoryDM(id: 'health', title: 'Health',
        imagepath: 'assets/images/health.png', color: MyTheme.pinkcolor,
      ),
      CategoryDM(id: 'business', title: 'Business',
        imagepath: 'assets/images/bussines.png', color: MyTheme.browncolor,
      ),
      CategoryDM(
        id: 'entertainment', title:'Entertainment',
        imagepath: 'assets/images/environment.png', color: MyTheme.bluecolor,
      ),
      CategoryDM(id: 'science', title: 'Science',
        imagepath: 'assets/images/science.png', color: MyTheme.yellowcolor,
      ),
    ];
  }





}






