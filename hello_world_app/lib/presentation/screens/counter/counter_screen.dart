import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

int clicksCounter=0;

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
      ),
       body: Center(
         child: Column(
           mainAxisAlignment:MainAxisAlignment.center ,
           children:  [
             Text('$clicksCounter',style: const TextStyle(fontSize: 160,fontWeight: FontWeight.w100),),
              Text('Click${clicksCounter==1?'':'s'}',style: const TextStyle(fontSize: 25),)
             //con ternario
            //  (clicksCounter!=1)
            //  ?const Text('clicks',style: TextStyle(fontSize: 25),)
            //  :const Text('click',style: TextStyle(fontSize: 25),)
              
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
             clicksCounter++;
          });
         
        },
        child:const Icon(Icons.plus_one),
       ),
      );
  }
}