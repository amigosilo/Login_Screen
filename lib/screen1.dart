import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/bg.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute (
                        builder: (BuildContext context) => const Screen2(title: 'Screen 2'),
                      ),
                    );
                  }, child:
                  const Text(
                    'Screen 2'
                  ),
                ),
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute (
                        builder: (BuildContext context) => const Screen3(title: 'Screen 3'),
                      ),
                    );
                  },
                  child:
                  const Text(
                      'Screen 3'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
