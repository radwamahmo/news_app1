import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

      InkWell(
        onTap: (){
         provider.changeLanguage('en');
        },
        child: provider.appLanguage == 'en' ?
            getSelectedItemWidget(AppLocalizations.of(context)!.english)
          :
            getUnSelectedItemWidget(AppLocalizations.of(context)!.english)
      ),
              SizedBox(height: 15,),
             InkWell(
               onTap: (){
                 provider.changeLanguage('ar');
               },
              child: provider.appLanguage == 'ar' ?
                  getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                  :
                  getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              )
            ],
          ),



    );
  }

  Widget getSelectedItemWidget(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold
            )),
        Icon(Icons.check, size: 30,color: Theme.of(context).primaryColor),
      ],
    );
  }
  Widget getUnSelectedItemWidget(String text){
    return Text(text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
