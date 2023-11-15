import 'package:flutter/material.dart';
import 'package:stust2023_11_15/second_page.dart';
import 'package:stust2023_11_15/thirdPage.dart';

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
          primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text("切換頁面"),
    );

    final btn = ElevatedButton(
      child:const Text("GO P2"),
        onPressed:()=>
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage())),
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
          btn,
          btn2
        ],
      ),
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(30),
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );
    return appHomePage;
  }
}