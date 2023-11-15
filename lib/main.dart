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
      title: const Text("首頁"),
    );

    final btn = ElevatedButton(
      child:const Text("GO P2"),
        onPressed:()=>
          Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                )=>SecondPage(),
            transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
            )=>SlideTransition(position: Tween(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
              child: child,
            ),
              transitionDuration: const Duration(milliseconds: 300)
            ),
          ),
    );

    final btn2 = ElevatedButton(
      child:const Text("GO P3"),
      onPressed:()=>
          Navigator.push(
              context,
            PageRouteBuilder(
                pageBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    )=>thirdPage(),
                transitionsBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child,
                    )=>FadeTransition(opacity: animation,
                  child: child,
                )
            ),
          ),
    );

    final widget = Container(
      child: Column(
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/zh/5/55/Porsche_logo.png",
          ),
          Text("這是什麼都不介紹的APP",style: TextStyle(fontSize: 24),),
          btn,
          btn2,
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