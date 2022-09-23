import 'package:flutter/material.dart';

import 'deneme.dart';

void main() {
  runApp(MyApp());
}

//class: içinde ne tanımladıysak çağırmamıza yarayan kod     extends:sınıfın içinden sınıf çağırmak   statefulwidget /stateleswidget: yeniden render olabilen7olamayan
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
  //state: anlık görüntü
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  void answerQuestion() {
    setState(() {
      questionIndex == 0 ? questionIndex++ : questionIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        //theme : tema              ThemeData.dark:koyu tema  ThemeData.light: açık tema
        useMaterial3:
            true, //useMaterial  : yeni dizayn özelliklerini otamatik kullanma          true: kullansın
      ),
      home: Scaffold(
        //scaffold : iskele
        appBar: AppBar(
          title: const Text('Fenerbahçe en son ne zaman şampiyon olmuştur? '),
        ),
        body: Column(
          children: [
            Deneme(denemeyazisi: questions[questionIndex]),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: answerQuestion,
                child: Text(
                  '1982',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () => print("yanlış"),
                child: Text('1907'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ...
                print("doğru cevap");
              },
              child: Text('Her sene Fenerbahçe şampiyondur'),
            ),
          ],
        ),
      ),
    );
  }
}
