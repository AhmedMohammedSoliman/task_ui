import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';

class ContainerWidget extends StatefulWidget {

  String text ;
  bool isSelected = false ;

  ContainerWidget ({required this.text});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  Color selectedColor = AppColors.primaryColor ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       widget.isSelected = true ;
        setState(() {

        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
        decoration: BoxDecoration(
          color: widget.isSelected ? selectedColor : Colors.white ,
          borderRadius: BorderRadius.circular(20) ,
          border: Border.all(color: widget.isSelected ? Colors.transparent :
          AppColors.primaryColor)
        ),
        child: Center(
          child: Text (widget.text ,maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 14 ,
            color: widget.isSelected ? Colors.white : AppColors.primaryColor
          ),),
        ),
      ),
    );
  }
}