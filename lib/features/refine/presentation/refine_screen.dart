import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';
import 'package:task_project/core/app_mediQuery.dart';
import 'package:task_project/core/app_strings.dart';
import 'package:task_project/features/refine/presentation/widgets/containerWidget.dart';

class RefineScreen extends StatefulWidget {
  static const String routeName = AppStrings.refineScreen;

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  String textInput = "";

  double _currentSliderValue = 500;

  List<String> list = <String>[
    'Available- Hey lets connect',
    'Away- Stay discreet and watch', 'Busy- Do not Disturb , will catch up '
    , 'SOS- Emergency ! Need assistance'];

  String dropdownValue = 'Available- Hey lets connect';

  var formKey = GlobalKey<FormState>();

  List<Widget> containerList = [
    ContainerWidget(text: "Coffee"),
    ContainerWidget(text: "Business"),
    ContainerWidget(text: "Hobbies"),
    ContainerWidget(text: "Friendship"),
    ContainerWidget(text: "Movies"),
    ContainerWidget(text: "Dinning"),
    ContainerWidget(text: "Dating"),
    ContainerWidget(text: "Matrimony"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: Icon(Icons.format_line_spacing_sharp , size: 28,),
        title: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text ("Refine" , style: Theme.of(context).textTheme.bodyLarge!.
            copyWith(color: Colors.white , fontSize: 16),),
            Row(
              children: [
                Icon(Icons.location_on, size: 15,),
                Text ("Seattle, Washington" , style: Theme.of(context).textTheme.bodyLarge!.
                copyWith(color: Colors.white , fontSize: 16 ,
                    fontWeight: FontWeight.normal),),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications_none),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(AppStrings.selectAvailability,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.02, context),
              ),
              DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: TextStyle(color: AppColors.primaryColor),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.02, context),
              ),
              Row(
                children: [
                  Text(AppStrings.addStatus,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.02, context),
              ),
              Form(
                key: formKey,
                child: TextFormField(
                  maxLength: 250,
                  onChanged: (text) {
                    textInput = text;
                  },
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please this is required";
                    }
                  },
                  decoration: InputDecoration(
                      counterStyle: Theme.of(context).textTheme.bodyLarge,
                      hintText: "Enter your status",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: AppColors.primaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: AppColors.primaryColor))),
                ),
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.02, context),
              ),
              Divider(
                color: AppColors.primaryColor,
                thickness: 0.2,
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.02, context),
              ),
              Row(
                children: [
                  Text(AppStrings.selectNearby,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                  SizedBox(
                    height: AppMediaQuery.heightDistanse(0.05, context),
                  ),
                ],
              ),
              Slider(
                value: _currentSliderValue,
                min: 500,
                max: 100000,
                divisions: 100,
                activeColor: AppColors.primaryColor,
                inactiveColor: Colors.grey.shade300,
                label: (_currentSliderValue.round() ~/ 1000).toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "500 m",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "100 km",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.05, context),
              ),
              Row(
                children: [
                  Text(AppStrings.selectPurpose,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: AppMediaQuery.heightDistanse(0.05, context),
              ),
              Container(
                height:AppMediaQuery.heightDistanse(0.3, context),
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2),
                  itemBuilder: (context, index) => containerList[index],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
