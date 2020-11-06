import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String kepastian = " ";
  void jawaban(int a){
    if(a==2){
      kepastian = "benar";
    }else{
      kepastian = "salah";
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi tanya jawab'),
          ),
          body: Column(
            children:<Widget>[
              Text ('Jumlah kaki manusia ada 2?'),
              RaisedButton(
                child: Text('1'),
                onPressed: (){
                  jawaban(1);
                },
              ),
              RaisedButton(
                child: Text('2'),
                onPressed: (){
                  jawaban(2);
                },
              ),
              RaisedButton(
                child: Text('3'),
                onPressed:  (){
                  jawaban(3);
                },
              ),
              RaisedButton(
                child: Text('4'),
                onPressed:  (){
                  jawaban(4);
                },
              ),
              Text ('Jawaban anda '+kepastian),
            ],
          ),
        ),
    );
  }
}
