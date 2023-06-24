
import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';
import 'package:task_project/core/app_strings.dart';
import 'package:task_project/features/explore/presentaion/widgets/tabsWidgetsByIndex.dart';

class ExploreScreen extends StatefulWidget {
  static const String routeName = AppStrings.exploreScreen ;

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  int selectedTab = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          leading: const Icon(Icons.format_line_spacing_sharp , size: 28,),
          title: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text (AppStrings.explore , style: Theme.of(context).textTheme.bodyLarge!.
                copyWith(color: Colors.white , fontSize: 16),),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 15,),
                  Text (AppStrings.sanFrancisco , style: Theme.of(context).textTheme.bodyLarge!.
                  copyWith(color: Colors.white , fontSize: 16 ,
                  fontWeight: FontWeight.normal),),
                ],
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.notifications_none),
            ),
          ],
      ),
    ),
      body: SingleChildScrollView(
        child: Column (
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: const Color(0xff103c59),
              child: Align (
                alignment: Alignment.bottomCenter,
                child: DefaultTabController(
                    length: 3,
                    child: TabBar (
                      onTap: (index){
                        selectedTab = index ;
                        setState(() {
                        });
                      },
                      indicatorColor: Colors.white,
                      tabs: const [
                         Tab (child: Text("INDIVIDUAL" , style: TextStyle(
                          fontSize: 12
                        ),),),
                        Tab (child: Text("PROFESSIONAL", style: TextStyle(
                            fontSize: 12
                        ),),),
                        Tab (child: Text("MERCHANT" , style: TextStyle(
                            fontSize: 12
                        ),),),
                      ],
                    ),

              ),
            )) ,
            TabWidget.TabViewByIndex(selectedTab)
          ],
        ),
      ),
    );
  }
}