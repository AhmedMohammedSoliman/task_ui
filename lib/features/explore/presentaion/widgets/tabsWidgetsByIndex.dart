import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/features/explore/presentaion/widgets/first_tab_widget.dart';
import 'package:task_project/features/explore/presentaion/widgets/second_tab_widget.dart';
import 'package:task_project/features/explore/presentaion/widgets/third_tab_widget.dart';

class TabWidget {

 static Widget TabViewByIndex (int selectedIndex){

    if (selectedIndex == 0){
      return FirstTabWidget();
    }else if (selectedIndex == 1){
      return SecondTabWidget ();
    }else {
      return ThirdTabWidget();
    }
  }
}