import 'package:flutter/material.dart';
import 'package:score/score/rich_score/rich_score_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SizedBox.fromSize(
          child: RichScoreContainer(
            score: 3.6,
          ),
          size: Size(320, 60),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(title),
//     ),
//     body: Center(
//       child: SizedBox.fromSize(
//         child: Score(score: 3.6,),
//         size: Size(200, 60),
//       ),
//     ), // This trailing comma makes auto-formatting nicer for build methods.
//   );
// }
}