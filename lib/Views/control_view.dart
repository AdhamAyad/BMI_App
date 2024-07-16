import 'package:bmi_plus/constanst.dart';
import 'package:flutter/material.dart';

class ControlView extends StatefulWidget {
  const ControlView({super.key, required this.isMale});
  final bool isMale; //! here we put the variabels that we will take from another widget when we call this widget

  @override
  State<ControlView> createState() => _ControlViewState();
}

class _ControlViewState extends State<ControlView> {
  int weight = 25; //! here we put the var that we use in our code in this widget

  int hight = 120;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children:[ Row(
          children: [
          Expanded(
            flex: 2, //? to take space bigger than nlue area twice
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const SizedBox(height: 24,),
                Row(children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios_new)),
                  Text('BMI',style: TextStyle(color: widget.isMale ? kBlueColor :kResdColor, //? widget.isMale → becuse we extend it from the widget
                  fontSize: 26),)
                ],),
        
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text('Male', style: TextStyle(fontSize: 24, color: widget.isMale ? kBlueColor :kResdColor),),
                  
                    Icon(widget.isMale ? Icons.male :Icons.female,size: 120, color: widget.isMale ? kBlueColor :kResdColor,),
                  
                    Text('Weight (KG)', style: TextStyle(fontSize: 24, color: widget.isMale ? kBlueColor :kResdColor),),
                  ],),
                ),
                Expanded(child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context,idnex){
                    int i = (idnex+5)*5;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          weight = i; //? take the value from the user and set anew state to update UI
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text('$i',
                            style: TextStyle(
                              fontSize: weight == i ? 48 :24,
                              color: widget.isMale ? kBlueColor :kResdColor,
                      ),
                      ),
                      ),
                      ),
                    ),
                  );
                }))
              ],),
            )),
        
        
        
        
        
           Expanded(
            child: Container(
              child: Column(
                children: [
                SizedBox(height: 24,),
                Text('Height \n (CM)',style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24),
                ),
        
                SizedBox(height: 40,),
        
        
                Expanded(child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context,idnex){
                    int x = (idnex+25)*5;
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          hight = x; //? take the value from the user and set anew state to update UI
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: hight == x ? Colors.white : widget.isMale ? kBlueColor :kResdColor,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Center(
                          child: Text('$x',
                            style: TextStyle(
                              fontSize: 24,
                              color: hight == x ? widget.isMale ? kBlueColor :kResdColor : Colors.white,
                      ),
                      ),
                      ),
                      ),
                    ),
                  );
                })),
        
                SizedBox(height: 24,)
                
              ],),
        
              decoration: BoxDecoration(
                color: widget.isMale ? kBlueColor :kResdColor),))
        ],),

        Positioned(
          bottom: 20,
          right: MediaQuery.sizeOf(context).width * .29,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kYellowColor,
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
            ),
            onPressed: (){},
              child: const Text("CALC")))
      ]),
    ),);
  }
}