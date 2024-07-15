import 'package:bmi_app/result.dart';
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
      //title: 'Flutter Demo',
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int hight = 150;

  int age = 15;

  double wight = 50;

  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              child: GestureDetector(
                onTap: () => setState(() {
                  isMale = false;
                }),
                child: Container(
                  margin: const EdgeInsets.all(16),
                height: MediaQuery.sizeOf(context).height * .22,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,
                  width: isMale? 0:4),
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
            ),



          Expanded(
            child: InkWell(
              onTap: () => setState(() { //? set state will change the border color whe the bool changes
                isMale = true;
              }),
              child: Container(
                margin: const EdgeInsets.all(16),
                height: MediaQuery.sizeOf(context).height * .22, //? make it responsive
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,
                  width: isMale? 4:0),
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
            ),
          )
          ],),

          Container(
            height: MediaQuery.sizeOf(context).height *.22, //? make app responsable
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text('hight'),

                Text('$hight'),

                Slider(
                  value: hight.toDouble(), //? initial value
                  min: 0,
                  max: 250,
                onChanged: (value){
                  setState(() {
                    hight = value.toInt();
                  });
                }),
              ],
            ),
          ),

          Row(
            children: [

            Expanded(child: Container(
              height: 200,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //? evenly → space is equal
                children: [

                const Text('Age'),
                Text('$age'),
                

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)),
                    child: IconButton(onPressed: (){
                      setState(() {
                        age--;
                      });
                    }, icon: const Icon(Icons.remove))),
                    Container(
                    decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)),
                    child: IconButton(onPressed: (){
                      setState(() {
                        age++;
                      });
                    }, icon: const Icon(Icons.add)))
                ],)
              ],),
            ),
            ),

            Expanded(child: Container(
              margin: const EdgeInsets.all(16),
              height: 200,
              decoration:  BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const Text('Wight'),
                Text('$wight'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)),
                    child: IconButton(onPressed: (){
                      setState(() {
                        wight--;
                      });
                    }, icon: const Icon(Icons.remove))),
                    Container(
                    decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)),
                    child: IconButton(onPressed: (){
                      setState(() {
                        wight+=5;
                      });
                    }, icon: const Icon(Icons.add)))
                ],)
              ],),
            ))
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Expanded(child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage(),));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, //? color of button
              foregroundColor: Colors.white //? color of child and color of effect when press
            ),
             child: const Text('result')))
          ],)


        ],
      ),
    );
  }
}