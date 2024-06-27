import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //? to remove debug banner
      title: 'Flutter Demo',
      
      home: HomePAge(),
    );
  }
}

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('BMI',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * .22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(Icons.female_outlined, size: 50,color: Colors.white,),
                Text('Female')
              ],),
                        ),
            ),



          Expanded(
            child:  Container(
              margin: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * .22, //? make it responsive
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(Icons.male_outlined, size: 50,color: Colors.white,),
                Text('Male')
                
              ],),
            ),
          )
          ],),

          Container(
            height: MediaQuery.of(context).size.height *.22,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text('hight'),

                const Text('150'),

                Slider(
                  value: 150, //? initial value
                  min: 0,
                  max: 200,
                 onChanged: (value){

                 })
              ],
            ),

          )
        ],
      ),
    );
  }
}
