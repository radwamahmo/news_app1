
import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightcolor = Color(0xff39A552);
  static Color whitecolor = Color(0xffffffff);
  static Color redcolor = Color(0xffC91C22);
  static Color darkbluecolor = Color(0xff003E90);
  static Color pinkcolor = Color(0xffED1E79);
  static Color browncolor = Color(0xffCF7E48);
  static Color bluecolor = Color(0xff4882CF);
  static Color yellowcolor = Color(0xffF2D352);
  static Color greycolor = Color(0xff4F5A69);
  static Color blackcolor = Color(0xff303030);


  static ThemeData LightTheme = ThemeData(
      primaryColor: primaryLightcolor,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryLightcolor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
        )
      ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,fontWeight: FontWeight.bold, color: whitecolor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,fontWeight: FontWeight.bold, color: blackcolor,
      ),
      titleSmall: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold, color: blackcolor,
      ),
    )
  );
}