import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/app_mediQuery.dart';

import '../../../../core/app_colors.dart';
import 'card_widget.dart';

class ThirdTabWidget extends StatelessWidget {

  List<Widget> cardsList= [
    CardWidget( image: "assets/images/image10.jpg",
      experience: "Friendship | Coffee | Hangout",
      personName: "Michael Murphy",
      place: "San Francisco, within 1 Km",
      state: "+ invite",
      subTitle: "Hi community! Iam available at your service",
      color: AppColors.primaryColor,
    isThree: true,
    isVisible: false,),
    CardWidget( image: "assets/images/image11.webp",
      experience: "Coffee | Movies | Hobbies",
      personName: "John Doe",
      place: "San Francisco, within 1 Km",
      state: "PENDING",
      subTitle: "Going to Berkley, Would love to share a ride with someone like minded",
      color: Colors.black54,
    isThree: true,
    isVisible: false,),
  ] ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppMediaQuery.heightDistanse(0.05, context),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 40,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: TextFormField(
                  onChanged: (text) {

                  },
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please this is required";
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      counterStyle: Theme.of(context).textTheme.bodyLarge,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: AppColors.primaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: AppColors.primaryColor))),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon (Icons.blur_linear_sharp , size: 25,),
              ),
            ],
          ),
        ),
        SizedBox(height: AppMediaQuery.heightDistanse(0.02, context)),
        Container(
          height: AppMediaQuery.heightDistanse(0.6, context),
          child: ListView.separated(
              itemBuilder: (context , index) => cardsList[index],
              separatorBuilder: (context , index) => SizedBox(
                height: 10,
              ),
              itemCount: 2),
        ),
        SizedBox(height: AppMediaQuery.heightDistanse(0.05, context),)
      ],
    );
  }
}