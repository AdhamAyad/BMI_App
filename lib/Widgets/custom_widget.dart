import 'package:flutter/material.dart';

class CustomSplashWidget extends StatelessWidget {
  const CustomSplashWidget({
    super.key,
    required this.gender, required this.icon, required this.color, this.onTap
  });
  final String gender;
  final IconData icon;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      onTap: onTap,
      child: Container(decoration: BoxDecoration(
        color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,size: 50,),
          Text( gender,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32),
            )
              ],
                ),
                  ),
    ),
                    );
  }
}