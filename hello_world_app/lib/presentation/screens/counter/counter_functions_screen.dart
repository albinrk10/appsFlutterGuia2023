import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

class CounterFunctionsScreen extends StatefulWidget {

  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

int clicksCounter=0;

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded), 
          onPressed: () { 
              setState(() {
                clicksCounter=0;
              });
           },),
           
        ], 
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

       floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
       CustomButton(
        icon:Icons.refresh_rounded,
        onPressed: () {
          setState(() {
            clicksCounter=0;
          });
        },),

       const SizedBox(height: 10,), 

       CustomButton(
        icon:Icons.exposure_minus_1,
        onPressed: () {
          if(clicksCounter==0) return;  
          setState(() {
            clicksCounter--;
          });
        },),

       const SizedBox(height: 10,),

       CustomButton(
        icon:Icons.plus_one,
        onPressed: () {
          setState(() {
            clicksCounter++;
          });
        },
       ),
        ],
       )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  
  
  

  const CustomButton({
    Key? key,
   required this.icon, 
   this.onPressed,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
     //shape:const StadiumBorder() ,
     enableFeedback:true ,
     //backgroundColor: Colors.yellow,
     elevation: 10,
     onPressed: onPressed,
     child: Icon(icon),
    );
  }
}