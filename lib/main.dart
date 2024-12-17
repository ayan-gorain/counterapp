import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
    );
  }

}
class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyHomeState();

}
class MyHomeState extends State<MyHomePage> {

  var count=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.amberAccent,
       title:const Text("Counter app"),

     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

         children: [

           Text("Count:$count",style: TextStyle(fontSize: 30,),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                });
              }, child: Text("Click to Increment")),
              SizedBox(width: 5,),
              ElevatedButton(onPressed: (){
                setState(() {
                  count--;
                });
              }, child: Text("Click to Decrement")),
            ],
          )

         ],
       ),
     ),

   );
  }

}