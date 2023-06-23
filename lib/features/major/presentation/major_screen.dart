import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';
import 'package:task_project/core/app_strings.dart';
import 'package:task_project/features/chat/presentation/chat_screen.dart';
import 'package:task_project/features/contact/presentation/contact_screen.dart';
import 'package:task_project/features/explore/presentaion/explore_screen.dart';
import 'package:task_project/features/network/presentation/network_screen.dart';
import 'package:task_project/features/refine/presentation/refine_screen.dart';

class MajorScreen extends StatefulWidget {

  static const String routeName= AppStrings.majorScreen;

  @override
  State<MajorScreen> createState() => _MajorScreenState();
}

class _MajorScreenState extends State<MajorScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: listItems[selectedIndex],
     bottomNavigationBar: Theme(
       data: ThemeData(canvasColor: Colors.white),
       child: BottomNavigationBar(
         showUnselectedLabels: true,
         unselectedItemColor: Colors.black54,
         selectedItemColor: AppColors.primaryColor,
         currentIndex: selectedIndex,
           onTap: (index){
           selectedIndex = index ;
           setState(() {
           });
           },
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.checklist_rounded) , label: "Refine"),
             BottomNavigationBarItem(icon: Icon(Icons.explore) , label: "Explore"),
             BottomNavigationBarItem(icon: Icon(Icons.network_cell) , label: "Network"),
             BottomNavigationBarItem(icon: Icon(Icons.chat) , label: "Chat"),
             BottomNavigationBarItem(icon: Icon(Icons.contact_page) , label: "Contacts"),
           ]),
     ),
   );
  }

  List <Widget> listItems = [RefineScreen() , ExploreScreen() , NetWorkScreen(),
  ChatScreen() , ContactScreen()];
}