import 'package:flutter/material.dart';
import 'package:stust2023_11_15/thirdPage.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text("P2"),
      backgroundColor: Colors.amber,
    );

    final btn = ElevatedButton(
        child: const Text("回到上一頁"),
        onPressed: ()=> Navigator.pop(context),
    );

    final btn2 = ElevatedButton(
      child:const Text("GO P3"),
      onPressed:()=>
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => thirdPage())),
    );

    final widget = Container(
      child: Column(
        children: [
          btn2,
          btn,
        ],
      ),
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(30),
    );

    final page = Scaffold(
      appBar: appBar,
      body: widget,
      backgroundColor: const Color.fromARGB(255,220,220,220),
    );
    return page;
  }
}