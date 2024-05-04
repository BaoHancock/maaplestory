import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mapplystory/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          
          Expanded(flex: 3,child: Container(
            color: Colors.blue,
          )),
          Container(
            color: Colors.green,
            height: 10,
          ),
          Expanded(child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [MyButton(text: "Play",function: (){},),MyButton(text: "Attack",function: (){},),MyButton(text: "LEFT",function: (){},),MyButton(text: "Right",function: (){},),MyButton(text: "Play",function: (){},)],
            ),
          ))

        ],
      ),

    );
  }
}