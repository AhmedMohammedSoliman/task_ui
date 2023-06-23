import 'package:flutter/cupertino.dart';

class AppMediaQuery {

  static double heightDistanse (double height , BuildContext context){
    return MediaQuery.of(context).size.height*height ;
  }

  static double widthDistanse (double width , BuildContext context){
    return MediaQuery.of(context).size.width*width ;
  }
}