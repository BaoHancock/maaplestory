import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final text;
final function;
  const MyButton({super.key, this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),child: GestureDetector(onTap: function,
      child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Container(color: Colors.black26,
        padding: EdgeInsets.all(10),child: Text(text),
      ),),
    ),);
  }
}