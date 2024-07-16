import 'package:bmi_plus/Views/control_view.dart';
import 'package:bmi_plus/Widgets/custom_widget.dart';
import 'package:bmi_plus/constanst.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: Row(
        children: [
          CustomSplashWidget(gender: 'Male',
          icon: Icons.male,
           color: kBlueColor,
           onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ControlView(isMale: true,)));
           },),
            CustomSplashWidget(gender: 'Female',icon: Icons.female, color: kResdColor,onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const ControlView(isMale: false,)));
           },),
        ]
      ),
    );
  }
}