import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';
import '../../../../core/app_mediQuery.dart';

class CardWidget extends StatelessWidget {

  String personName  ;
  String place ;
  String image ;
  String experience ;
  String state ;
  Color color ;
  String subTitle ;
  bool isThree ;
  bool isVisible ;

  CardWidget ({required this.image ,
  required this.experience , required this.personName , required this.place ,
  required this.state , required this.color , required this.subTitle,
  required this.isThree ,
  required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: AppMediaQuery.widthDistanse(0.9, context),
          height: AppMediaQuery.widthDistanse(0.7, context),
          color: Colors.white,
        ),
        Row(
          children: [
            SizedBox(
              width: AppMediaQuery.widthDistanse(0.15, context),
              height: AppMediaQuery.widthDistanse(0.7, context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: AppMediaQuery.widthDistanse(0.75,  context),
              height: AppMediaQuery.widthDistanse(0.7, context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ]),
              child: SingleChildScrollView(
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    isVisible ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){

                        }, child: Text (state , style: Theme.of(context).textTheme.bodyLarge
                        !.copyWith(color: color , fontSize: 18),)),
                      ],
                    ) : SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text(personName, style: Theme.of(context).textTheme.bodyLarge
                        !.copyWith(color: AppColors.primaryColor , fontSize: 18),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(place, style: Theme.of(context).textTheme.bodyLarge
                        !.copyWith(color: Colors.black54 , fontSize: 13),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey,
                              ),
                              width: 150,
                              height: 15,
                            ),
                            Container(
                              width: 75,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.only(left: 40),
                      child: isThree ? Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Icon (Icons.phone , color: Colors.white,),
                            style: ElevatedButton.styleFrom(shape: CircleBorder() ,
                                backgroundColor: AppColors.primaryColor),),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Icon (Icons.person , color: Colors.white,) ,
                            style: ElevatedButton.styleFrom(shape: CircleBorder() ,
                                backgroundColor: AppColors.primaryColor),),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Icon (Icons.location_on_sharp , color: Colors.white,) ,
                            style: ElevatedButton.styleFrom(shape: CircleBorder() ,
                                backgroundColor: AppColors.primaryColor),),
                        ],
                      ) : Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Icon (Icons.phone , color: Colors.white,),
                            style: ElevatedButton.styleFrom(shape: CircleBorder() ,
                                backgroundColor: AppColors.primaryColor),),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Icon (Icons.person , color: Colors.white,) ,
                            style: ElevatedButton.styleFrom(shape: CircleBorder() ,
                                backgroundColor: AppColors.primaryColor),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text (experience, style: Theme.of(context).textTheme.bodyLarge
                    !.copyWith(color: AppColors.primaryColor , fontSize: 18)),
                    SizedBox(height: 5,),
                    Text (subTitle , style: Theme.of(context).textTheme.bodyLarge
                    !.copyWith(color: Colors.black54 , fontSize: 15))
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 30,
          top: 30,
          child: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: AssetImage(
                   image,
                  ),
                  width: AppMediaQuery.widthDistanse(0.3, context),
                  height: AppMediaQuery.widthDistanse(0.3, context),
                  fit: BoxFit.fill,
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
