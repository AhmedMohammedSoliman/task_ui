import 'package:flutter/material.dart';
import 'package:task_project/config/app_theme.dart';
import 'package:task_project/features/chat/presentation/chat_screen.dart';
import 'package:task_project/features/contact/presentation/contact_screen.dart';
import 'package:task_project/features/explore/presentaion/explore_screen.dart';
import 'package:task_project/features/major/presentation/major_screen.dart';
import 'package:task_project/features/network/presentation/network_screen.dart';
import 'package:task_project/features/refine/presentation/refine_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MajorScreen.routeName,
      routes:{
        MajorScreen.routeName : (context) => MajorScreen(),
        RefineScreen.routeName : (context) => RefineScreen(),
        ExploreScreen.routeName : (context) => ExploreScreen(),
        NetWorkScreen.routeName : (context) => NetWorkScreen(),
        ChatScreen.routeName : (context) => ChatScreen(),
        ContactScreen.routeName : (context) => ContactScreen()
      } ,
      locale: Locale("en"),
      theme: AppTheme.lightTheme,
    );
  }
}