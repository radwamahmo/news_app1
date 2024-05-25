import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/NewsResponse.dart';

import '../my_theme.dart';


class NewsItem extends StatelessWidget {
 News news;
 NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
           borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
             imageUrl: news.urlToImage??'',
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.28,
              fit: BoxFit.fill,
              placeholder: (context, url) =>Center(child:CircularProgressIndicator(
                color: MyTheme.primaryLightcolor,
              ), ) ,
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
         ),
         // Container(
          //  clipBehavior: Clip.antiAlias,
          //  decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20)
          //  ),
           // child: Image.network(news.urlToImage??''),
        //  )
          SizedBox(height: 10),
          Text(news.author??'',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: MyTheme.greycolor
          ),),
          SizedBox(height: 10),
          Text(news.title??'',style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 10),
          Text(news.publishedAt??'',style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: MyTheme.greycolor
          ),textAlign: TextAlign.end,),
        ],
      ),
    ) ;
  }
}