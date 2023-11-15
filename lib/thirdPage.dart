import 'package:flutter/material.dart';
import 'package:stust2023_11_15/main.dart';

class thirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text("P3"),
      backgroundColor: Colors.red,
    );

    final btn = ElevatedButton(
      child: const Text("回到上一頁"),
      onPressed: ()=> Navigator.pop(context),
    );

    final btn2 = ElevatedButton(
      child: const Text("回到首頁"),
      onPressed: ()=> Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage())),
    );

    final widget = Container(
      child: Column(
        children: [
          Text("試試相信別人,世界更美好",style: TextStyle(fontSize: 24),),
          btn,
          btn2,
          Image.network("https://www.chps.ntpc.edu.tw/app/index.php?Action=downloadfile&file=WVhSMFlXTm9MelkzTDNCMFlWOHpOREkyWHpjM01qSXhNREpmTURVd056TXVjRzVu&fname=DGGGVWWXYW441110HCLKKPJGRKB4OOLKDGUWSS20GGGDWWFCSSECVTPOUSSSPKPO")
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