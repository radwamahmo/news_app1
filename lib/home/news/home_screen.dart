import 'package:flutter/material.dart';
import 'package:news_app/drawer/home_drawer.dart';
import 'package:news_app/home/category/category_details.dart';
import 'package:news_app/home/category/category_fragments.dart';
import 'package:news_app/home/news/search_screen.dart';


import 'package:news_app/model/category.dart';
import 'package:news_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName = 'home_screen' ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: MyTheme.whitecolor,
          child: Image.asset('assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,),
        ),
        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
         title: Text(selectedMenuItem == HomeDrawer.settings?
         'Settings':
             selectedCategory == null ?
            'News App' :
               selectedCategory!.title,
         style: Theme.of(context).textTheme.titleLarge,),
         actions: [
           IconButton(
               icon: Icon(Icons.search),
               onPressed: () {
                 setState(() { //add

                 });
               }
           )
           ],
        ),
          drawer: Drawer(
            child: HomeDrawer(onSideMenuItemClick:onSideMenuItemClick ,),
          ),
          body: selectedMenuItem == HomeDrawer.settings?
              SettingsTab():
          selectedCategory == null?
          CategoryFragment(onCategoryItemClick: onCategoryItemClick,):
              CategoryDetails(category:selectedCategory!),
        )
      ],
    );
  }

  CategoryDM? selectedCategory;

  void onCategoryItemClick(CategoryDM newSelectedCategory){
   selectedCategory = newSelectedCategory;
   setState(() {

   });
  }

  int selectedMenuItem = HomeDrawer.categories;
  void onSideMenuItemClick(int newSelectedMenuItem){
    selectedMenuItem = newSelectedMenuItem ;
    selectedCategory = null ;
    Navigator.pop(context);
    setState(() {

    });
  }
}
